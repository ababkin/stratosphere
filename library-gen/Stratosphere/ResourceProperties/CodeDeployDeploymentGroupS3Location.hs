{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupS3Location where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeDeployDeploymentGroupS3Location. See
-- | 'codeDeployDeploymentGroupS3Location' for a more convenient constructor.
data CodeDeployDeploymentGroupS3Location =
  CodeDeployDeploymentGroupS3Location
  { _codeDeployDeploymentGroupS3LocationBucket :: Val Text
  , _codeDeployDeploymentGroupS3LocationBundleType :: Val Text
  , _codeDeployDeploymentGroupS3LocationETag :: Maybe (Val Text)
  , _codeDeployDeploymentGroupS3LocationKey :: Val Text
  , _codeDeployDeploymentGroupS3LocationVersion :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON CodeDeployDeploymentGroupS3Location where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

instance FromJSON CodeDeployDeploymentGroupS3Location where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

-- | Constructor for 'CodeDeployDeploymentGroupS3Location' containing required
-- | fields as arguments.
codeDeployDeploymentGroupS3Location
  :: Val Text -- ^ 'cddgslBucket'
  -> Val Text -- ^ 'cddgslBundleType'
  -> Val Text -- ^ 'cddgslKey'
  -> CodeDeployDeploymentGroupS3Location
codeDeployDeploymentGroupS3Location bucketarg bundleTypearg keyarg =
  CodeDeployDeploymentGroupS3Location
  { _codeDeployDeploymentGroupS3LocationBucket = bucketarg
  , _codeDeployDeploymentGroupS3LocationBundleType = bundleTypearg
  , _codeDeployDeploymentGroupS3LocationETag = Nothing
  , _codeDeployDeploymentGroupS3LocationKey = keyarg
  , _codeDeployDeploymentGroupS3LocationVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-bucket
cddgslBucket :: Lens' CodeDeployDeploymentGroupS3Location (Val Text)
cddgslBucket = lens _codeDeployDeploymentGroupS3LocationBucket (\s a -> s { _codeDeployDeploymentGroupS3LocationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-bundletype
cddgslBundleType :: Lens' CodeDeployDeploymentGroupS3Location (Val Text)
cddgslBundleType = lens _codeDeployDeploymentGroupS3LocationBundleType (\s a -> s { _codeDeployDeploymentGroupS3LocationBundleType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-etag
cddgslETag :: Lens' CodeDeployDeploymentGroupS3Location (Maybe (Val Text))
cddgslETag = lens _codeDeployDeploymentGroupS3LocationETag (\s a -> s { _codeDeployDeploymentGroupS3LocationETag = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-key
cddgslKey :: Lens' CodeDeployDeploymentGroupS3Location (Val Text)
cddgslKey = lens _codeDeployDeploymentGroupS3LocationKey (\s a -> s { _codeDeployDeploymentGroupS3LocationKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-value
cddgslVersion :: Lens' CodeDeployDeploymentGroupS3Location (Maybe (Val Text))
cddgslVersion = lens _codeDeployDeploymentGroupS3LocationVersion (\s a -> s { _codeDeployDeploymentGroupS3LocationVersion = a })
