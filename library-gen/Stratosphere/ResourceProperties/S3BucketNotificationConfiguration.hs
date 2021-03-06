{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html

module Stratosphere.ResourceProperties.S3BucketNotificationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketLambdaConfiguration
import Stratosphere.ResourceProperties.S3BucketQueueConfiguration
import Stratosphere.ResourceProperties.S3BucketTopicConfiguration

-- | Full data type definition for S3BucketNotificationConfiguration. See
-- | 's3BucketNotificationConfiguration' for a more convenient constructor.
data S3BucketNotificationConfiguration =
  S3BucketNotificationConfiguration
  { _s3BucketNotificationConfigurationLambdaConfigurations :: Maybe [S3BucketLambdaConfiguration]
  , _s3BucketNotificationConfigurationQueueConfigurations :: Maybe [S3BucketQueueConfiguration]
  , _s3BucketNotificationConfigurationTopicConfigurations :: Maybe [S3BucketTopicConfiguration]
  } deriving (Show, Eq, Generic)

instance ToJSON S3BucketNotificationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON S3BucketNotificationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'S3BucketNotificationConfiguration' containing required
-- | fields as arguments.
s3BucketNotificationConfiguration
  :: S3BucketNotificationConfiguration
s3BucketNotificationConfiguration  =
  S3BucketNotificationConfiguration
  { _s3BucketNotificationConfigurationLambdaConfigurations = Nothing
  , _s3BucketNotificationConfigurationQueueConfigurations = Nothing
  , _s3BucketNotificationConfigurationTopicConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig
sbncLambdaConfigurations :: Lens' S3BucketNotificationConfiguration (Maybe [S3BucketLambdaConfiguration])
sbncLambdaConfigurations = lens _s3BucketNotificationConfigurationLambdaConfigurations (\s a -> s { _s3BucketNotificationConfigurationLambdaConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-queueconfig
sbncQueueConfigurations :: Lens' S3BucketNotificationConfiguration (Maybe [S3BucketQueueConfiguration])
sbncQueueConfigurations = lens _s3BucketNotificationConfigurationQueueConfigurations (\s a -> s { _s3BucketNotificationConfigurationQueueConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-topicconfig
sbncTopicConfigurations :: Lens' S3BucketNotificationConfiguration (Maybe [S3BucketTopicConfiguration])
sbncTopicConfigurations = lens _s3BucketNotificationConfigurationTopicConfigurations (\s a -> s { _s3BucketNotificationConfigurationTopicConfigurations = a })
