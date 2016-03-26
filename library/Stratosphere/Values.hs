{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module Stratosphere.Values
       ( Val (..)
       ) where

import Data.Aeson
import qualified Data.HashMap.Strict as HM
import Data.String (IsString (..))
import qualified Data.Text as T
import GHC.Exts (fromList)

-- GADTs are cool, but I couldn't get this to work with FromJSON
-- data Val a where
--   Literal :: a -> Val a
--   Ref :: T.Text -> Val a
--   If :: T.Text -> Val a -> Val a -> Val a
--   And :: Val Bool -> Val Bool -> Val Bool
--   Equals :: (Show a, ToJSON a) => Val a -> Val a -> Val Bool
--   Or :: Val Bool -> Val Bool -> Val Bool

data Val a
 = Literal a
 | Ref T.Text
 | If T.Text (Val a) (Val a)
 | And (Val Bool) (Val Bool)
 | Equals (Val Bool) (Val Bool)
 | Or (Val Bool) (Val Bool)

deriving instance (Show a) => Show (Val a)

instance (IsString a) => IsString (Val a) where
  fromString s = Literal (fromString s)

instance (ToJSON a) => ToJSON (Val a) where
  toJSON (Literal v) = toJSON v
  toJSON (Ref r) = object [("Ref", toJSON r)]
  toJSON (If i x y) = mkFunc "Fn::If" [toJSON i, toJSON x, toJSON y]
  toJSON (And x y) = mkFunc "Fn::And" [toJSON x, toJSON y]
  toJSON (Equals x y) = mkFunc "Fn::Equals" [toJSON x, toJSON y]
  toJSON (Or x y) = mkFunc "Fn::Or" [toJSON x, toJSON y]

mkFunc :: T.Text -> [Value] -> Value
mkFunc name args = object [(name, Array $ fromList args)]

instance (FromJSON a) => FromJSON (Val a) where
  parseJSON (Object o) =
    case HM.toList o of
      [] -> fail "Empty object as Val"
      [(n, obj')] -> tryParseFunc n obj'
      _ -> fail "Too large of object in Val"
    where tryParseFunc "Ref" obj = Ref <$> parseJSON obj
          tryParseFunc "Fn::If" obj =
            (\(i, x, y) -> If i x y) <$> parseJSON obj
          tryParseFunc "Fn::And" obj =
            uncurry And <$> parseJSON obj
          tryParseFunc "Fn::Equals" obj =
            uncurry Equals <$> parseJSON obj
          tryParseFunc "Fn::Or" obj =
            uncurry Or <$> parseJSON obj
          tryParseFunc n _ = fail $ "Unknown function name " ++ T.unpack n
  parseJSON v = Literal <$> parseJSON v