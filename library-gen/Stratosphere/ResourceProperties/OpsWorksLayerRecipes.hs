{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html

module Stratosphere.ResourceProperties.OpsWorksLayerRecipes where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksLayerRecipes. See
-- | 'opsWorksLayerRecipes' for a more convenient constructor.
data OpsWorksLayerRecipes =
  OpsWorksLayerRecipes
  { _opsWorksLayerRecipesConfigure :: Maybe [Val Text]
  , _opsWorksLayerRecipesDeploy :: Maybe [Val Text]
  , _opsWorksLayerRecipesSetup :: Maybe [Val Text]
  , _opsWorksLayerRecipesShutdown :: Maybe [Val Text]
  , _opsWorksLayerRecipesUndeploy :: Maybe [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON OpsWorksLayerRecipes where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON OpsWorksLayerRecipes where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'OpsWorksLayerRecipes' containing required fields as
-- | arguments.
opsWorksLayerRecipes
  :: OpsWorksLayerRecipes
opsWorksLayerRecipes  =
  OpsWorksLayerRecipes
  { _opsWorksLayerRecipesConfigure = Nothing
  , _opsWorksLayerRecipesDeploy = Nothing
  , _opsWorksLayerRecipesSetup = Nothing
  , _opsWorksLayerRecipesShutdown = Nothing
  , _opsWorksLayerRecipesUndeploy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-configure
owlrConfigure :: Lens' OpsWorksLayerRecipes (Maybe [Val Text])
owlrConfigure = lens _opsWorksLayerRecipesConfigure (\s a -> s { _opsWorksLayerRecipesConfigure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-deploy
owlrDeploy :: Lens' OpsWorksLayerRecipes (Maybe [Val Text])
owlrDeploy = lens _opsWorksLayerRecipesDeploy (\s a -> s { _opsWorksLayerRecipesDeploy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-setup
owlrSetup :: Lens' OpsWorksLayerRecipes (Maybe [Val Text])
owlrSetup = lens _opsWorksLayerRecipesSetup (\s a -> s { _opsWorksLayerRecipesSetup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-shutdown
owlrShutdown :: Lens' OpsWorksLayerRecipes (Maybe [Val Text])
owlrShutdown = lens _opsWorksLayerRecipesShutdown (\s a -> s { _opsWorksLayerRecipesShutdown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-undeploy
owlrUndeploy :: Lens' OpsWorksLayerRecipes (Maybe [Val Text])
owlrUndeploy = lens _opsWorksLayerRecipesUndeploy (\s a -> s { _opsWorksLayerRecipesUndeploy = a })
