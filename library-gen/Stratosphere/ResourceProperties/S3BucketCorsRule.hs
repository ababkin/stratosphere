{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html

module Stratosphere.ResourceProperties.S3BucketCorsRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3BucketCorsRule. See 's3BucketCorsRule'
-- | for a more convenient constructor.
data S3BucketCorsRule =
  S3BucketCorsRule
  { _s3BucketCorsRuleAllowedHeaders :: Maybe [Val Text]
  , _s3BucketCorsRuleAllowedMethods :: [Val Text]
  , _s3BucketCorsRuleAllowedOrigins :: [Val Text]
  , _s3BucketCorsRuleExposedHeaders :: Maybe [Val Text]
  , _s3BucketCorsRuleId :: Maybe (Val Text)
  , _s3BucketCorsRuleMaxAge :: Maybe (Val Integer')
  } deriving (Show, Eq, Generic)

instance ToJSON S3BucketCorsRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON S3BucketCorsRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'S3BucketCorsRule' containing required fields as
-- | arguments.
s3BucketCorsRule
  :: [Val Text] -- ^ 'sbcrAllowedMethods'
  -> [Val Text] -- ^ 'sbcrAllowedOrigins'
  -> S3BucketCorsRule
s3BucketCorsRule allowedMethodsarg allowedOriginsarg =
  S3BucketCorsRule
  { _s3BucketCorsRuleAllowedHeaders = Nothing
  , _s3BucketCorsRuleAllowedMethods = allowedMethodsarg
  , _s3BucketCorsRuleAllowedOrigins = allowedOriginsarg
  , _s3BucketCorsRuleExposedHeaders = Nothing
  , _s3BucketCorsRuleId = Nothing
  , _s3BucketCorsRuleMaxAge = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedheaders
sbcrAllowedHeaders :: Lens' S3BucketCorsRule (Maybe [Val Text])
sbcrAllowedHeaders = lens _s3BucketCorsRuleAllowedHeaders (\s a -> s { _s3BucketCorsRuleAllowedHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedmethods
sbcrAllowedMethods :: Lens' S3BucketCorsRule [Val Text]
sbcrAllowedMethods = lens _s3BucketCorsRuleAllowedMethods (\s a -> s { _s3BucketCorsRuleAllowedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedorigins
sbcrAllowedOrigins :: Lens' S3BucketCorsRule [Val Text]
sbcrAllowedOrigins = lens _s3BucketCorsRuleAllowedOrigins (\s a -> s { _s3BucketCorsRuleAllowedOrigins = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-exposedheaders
sbcrExposedHeaders :: Lens' S3BucketCorsRule (Maybe [Val Text])
sbcrExposedHeaders = lens _s3BucketCorsRuleExposedHeaders (\s a -> s { _s3BucketCorsRuleExposedHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-id
sbcrId :: Lens' S3BucketCorsRule (Maybe (Val Text))
sbcrId = lens _s3BucketCorsRuleId (\s a -> s { _s3BucketCorsRuleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-maxage
sbcrMaxAge :: Lens' S3BucketCorsRule (Maybe (Val Integer'))
sbcrMaxAge = lens _s3BucketCorsRuleMaxAge (\s a -> s { _s3BucketCorsRuleMaxAge = a })
