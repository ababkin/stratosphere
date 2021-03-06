{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html

module Stratosphere.ResourceProperties.RDSOptionGroupOptionConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.RDSOptionGroupOptionSetting

-- | Full data type definition for RDSOptionGroupOptionConfiguration. See
-- | 'rdsOptionGroupOptionConfiguration' for a more convenient constructor.
data RDSOptionGroupOptionConfiguration =
  RDSOptionGroupOptionConfiguration
  { _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships :: Maybe [Val Text]
  , _rDSOptionGroupOptionConfigurationOptionName :: Val Text
  , _rDSOptionGroupOptionConfigurationOptionSettings :: Maybe RDSOptionGroupOptionSetting
  , _rDSOptionGroupOptionConfigurationPort :: Maybe (Val Integer')
  , _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships :: Maybe [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON RDSOptionGroupOptionConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON RDSOptionGroupOptionConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'RDSOptionGroupOptionConfiguration' containing required
-- | fields as arguments.
rdsOptionGroupOptionConfiguration
  :: Val Text -- ^ 'rdsogocOptionName'
  -> RDSOptionGroupOptionConfiguration
rdsOptionGroupOptionConfiguration optionNamearg =
  RDSOptionGroupOptionConfiguration
  { _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships = Nothing
  , _rDSOptionGroupOptionConfigurationOptionName = optionNamearg
  , _rDSOptionGroupOptionConfigurationOptionSettings = Nothing
  , _rDSOptionGroupOptionConfigurationPort = Nothing
  , _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-dbsecuritygroupmemberships
rdsogocDBSecurityGroupMemberships :: Lens' RDSOptionGroupOptionConfiguration (Maybe [Val Text])
rdsogocDBSecurityGroupMemberships = lens _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships (\s a -> s { _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionname
rdsogocOptionName :: Lens' RDSOptionGroupOptionConfiguration (Val Text)
rdsogocOptionName = lens _rDSOptionGroupOptionConfigurationOptionName (\s a -> s { _rDSOptionGroupOptionConfigurationOptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionsettings
rdsogocOptionSettings :: Lens' RDSOptionGroupOptionConfiguration (Maybe RDSOptionGroupOptionSetting)
rdsogocOptionSettings = lens _rDSOptionGroupOptionConfigurationOptionSettings (\s a -> s { _rDSOptionGroupOptionConfigurationOptionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-port
rdsogocPort :: Lens' RDSOptionGroupOptionConfiguration (Maybe (Val Integer'))
rdsogocPort = lens _rDSOptionGroupOptionConfigurationPort (\s a -> s { _rDSOptionGroupOptionConfigurationPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-vpcsecuritygroupmemberships
rdsogocVpcSecurityGroupMemberships :: Lens' RDSOptionGroupOptionConfiguration (Maybe [Val Text])
rdsogocVpcSecurityGroupMemberships = lens _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships (\s a -> s { _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships = a })
