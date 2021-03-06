{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-kinesis.html

module Stratosphere.ResourceProperties.IoTTopicRuleKinesisAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleKinesisAction. See
-- | 'ioTTopicRuleKinesisAction' for a more convenient constructor.
data IoTTopicRuleKinesisAction =
  IoTTopicRuleKinesisAction
  { _ioTTopicRuleKinesisActionPartitionKey :: Maybe (Val Text)
  , _ioTTopicRuleKinesisActionRoleArn :: Val Text
  , _ioTTopicRuleKinesisActionStreamName :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON IoTTopicRuleKinesisAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON IoTTopicRuleKinesisAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleKinesisAction' containing required fields as
-- | arguments.
ioTTopicRuleKinesisAction
  :: Val Text -- ^ 'ittrkaRoleArn'
  -> Val Text -- ^ 'ittrkaStreamName'
  -> IoTTopicRuleKinesisAction
ioTTopicRuleKinesisAction roleArnarg streamNamearg =
  IoTTopicRuleKinesisAction
  { _ioTTopicRuleKinesisActionPartitionKey = Nothing
  , _ioTTopicRuleKinesisActionRoleArn = roleArnarg
  , _ioTTopicRuleKinesisActionStreamName = streamNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-kinesis.html#cfn-iot-kinesis-partitionkey
ittrkaPartitionKey :: Lens' IoTTopicRuleKinesisAction (Maybe (Val Text))
ittrkaPartitionKey = lens _ioTTopicRuleKinesisActionPartitionKey (\s a -> s { _ioTTopicRuleKinesisActionPartitionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-kinesis.html#cfn-iot-kinesis-rolearn
ittrkaRoleArn :: Lens' IoTTopicRuleKinesisAction (Val Text)
ittrkaRoleArn = lens _ioTTopicRuleKinesisActionRoleArn (\s a -> s { _ioTTopicRuleKinesisActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-kinesis.html#cfn-iot-kinesis-streamname
ittrkaStreamName :: Lens' IoTTopicRuleKinesisAction (Val Text)
ittrkaStreamName = lens _ioTTopicRuleKinesisActionStreamName (\s a -> s { _ioTTopicRuleKinesisActionStreamName = a })
