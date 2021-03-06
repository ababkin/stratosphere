{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCopyCommand
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration

-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration. See
-- | 'kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration' for a
-- | more convenient constructor.
data KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration =
  KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationClusterJDBCURL :: Val Text
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationCopyCommand :: KinesisFirehoseDeliveryStreamCopyCommand
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationPassword :: Val Text
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationRoleARN :: Val Text
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationS3Configuration :: KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationUsername :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 62, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 62, omitNothingFields = True }

-- | Constructor for
-- | 'KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration'
-- | containing required fields as arguments.
kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
  :: Val Text -- ^ 'kfdsrdcClusterJDBCURL'
  -> KinesisFirehoseDeliveryStreamCopyCommand -- ^ 'kfdsrdcCopyCommand'
  -> Val Text -- ^ 'kfdsrdcPassword'
  -> Val Text -- ^ 'kfdsrdcRoleARN'
  -> KinesisFirehoseDeliveryStreamS3DestinationConfiguration -- ^ 'kfdsrdcS3Configuration'
  -> Val Text -- ^ 'kfdsrdcUsername'
  -> KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
kinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration clusterJDBCURLarg copyCommandarg passwordarg roleARNarg s3Configurationarg usernamearg =
  KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationClusterJDBCURL = clusterJDBCURLarg
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationCopyCommand = copyCommandarg
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationPassword = passwordarg
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationRoleARN = roleARNarg
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationS3Configuration = s3Configurationarg
  , _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-cloudwatchloggingoptions
kfdsrdcCloudWatchLoggingOptions :: Lens' KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions)
kfdsrdcCloudWatchLoggingOptions = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationCloudWatchLoggingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-clusterjdbcurl
kfdsrdcClusterJDBCURL :: Lens' KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration (Val Text)
kfdsrdcClusterJDBCURL = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationClusterJDBCURL (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationClusterJDBCURL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand
kfdsrdcCopyCommand :: Lens' KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration KinesisFirehoseDeliveryStreamCopyCommand
kfdsrdcCopyCommand = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationCopyCommand (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationCopyCommand = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-password
kfdsrdcPassword :: Lens' KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration (Val Text)
kfdsrdcPassword = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationPassword (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-rolearn
kfdsrdcRoleARN :: Lens' KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration (Val Text)
kfdsrdcRoleARN = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-s3configuration
kfdsrdcS3Configuration :: Lens' KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration KinesisFirehoseDeliveryStreamS3DestinationConfiguration
kfdsrdcS3Configuration = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationS3Configuration (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationS3Configuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-usename
kfdsrdcUsername :: Lens' KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration (Val Text)
kfdsrdcUsername = lens _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationUsername (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftDestinationConfigurationUsername = a })
