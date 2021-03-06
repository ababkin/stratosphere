{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html

module Stratosphere.ResourceProperties.S3BucketWebsiteConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketRedirectAllRequestsTo
import Stratosphere.ResourceProperties.S3BucketRoutingRule

-- | Full data type definition for S3BucketWebsiteConfiguration. See
-- | 's3BucketWebsiteConfiguration' for a more convenient constructor.
data S3BucketWebsiteConfiguration =
  S3BucketWebsiteConfiguration
  { _s3BucketWebsiteConfigurationErrorDocument :: Maybe (Val Text)
  , _s3BucketWebsiteConfigurationIndexDocument :: Maybe (Val Text)
  , _s3BucketWebsiteConfigurationRedirectAllRequestsTo :: Maybe S3BucketRedirectAllRequestsTo
  , _s3BucketWebsiteConfigurationRoutingRules :: Maybe [S3BucketRoutingRule]
  } deriving (Show, Eq, Generic)

instance ToJSON S3BucketWebsiteConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON S3BucketWebsiteConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'S3BucketWebsiteConfiguration' containing required fields
-- | as arguments.
s3BucketWebsiteConfiguration
  :: S3BucketWebsiteConfiguration
s3BucketWebsiteConfiguration  =
  S3BucketWebsiteConfiguration
  { _s3BucketWebsiteConfigurationErrorDocument = Nothing
  , _s3BucketWebsiteConfigurationIndexDocument = Nothing
  , _s3BucketWebsiteConfigurationRedirectAllRequestsTo = Nothing
  , _s3BucketWebsiteConfigurationRoutingRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-errordocument
sbwcErrorDocument :: Lens' S3BucketWebsiteConfiguration (Maybe (Val Text))
sbwcErrorDocument = lens _s3BucketWebsiteConfigurationErrorDocument (\s a -> s { _s3BucketWebsiteConfigurationErrorDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-indexdocument
sbwcIndexDocument :: Lens' S3BucketWebsiteConfiguration (Maybe (Val Text))
sbwcIndexDocument = lens _s3BucketWebsiteConfigurationIndexDocument (\s a -> s { _s3BucketWebsiteConfigurationIndexDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-redirectallrequeststo
sbwcRedirectAllRequestsTo :: Lens' S3BucketWebsiteConfiguration (Maybe S3BucketRedirectAllRequestsTo)
sbwcRedirectAllRequestsTo = lens _s3BucketWebsiteConfigurationRedirectAllRequestsTo (\s a -> s { _s3BucketWebsiteConfigurationRedirectAllRequestsTo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-routingrules
sbwcRoutingRules :: Lens' S3BucketWebsiteConfiguration (Maybe [S3BucketRoutingRule])
sbwcRoutingRules = lens _s3BucketWebsiteConfigurationRoutingRules (\s a -> s { _s3BucketWebsiteConfigurationRoutingRules = a })
