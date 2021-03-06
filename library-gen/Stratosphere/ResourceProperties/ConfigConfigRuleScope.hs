{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html

module Stratosphere.ResourceProperties.ConfigConfigRuleScope where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ConfigConfigRuleScope. See
-- | 'configConfigRuleScope' for a more convenient constructor.
data ConfigConfigRuleScope =
  ConfigConfigRuleScope
  { _configConfigRuleScopeComplianceResourceId :: Maybe (Val Text)
  , _configConfigRuleScopeComplianceResourceTypes :: Maybe [Val Text]
  , _configConfigRuleScopeTagKey :: Maybe (Val Text)
  , _configConfigRuleScopeTagValue :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ConfigConfigRuleScope where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON ConfigConfigRuleScope where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'ConfigConfigRuleScope' containing required fields as
-- | arguments.
configConfigRuleScope
  :: ConfigConfigRuleScope
configConfigRuleScope  =
  ConfigConfigRuleScope
  { _configConfigRuleScopeComplianceResourceId = Nothing
  , _configConfigRuleScopeComplianceResourceTypes = Nothing
  , _configConfigRuleScopeTagKey = Nothing
  , _configConfigRuleScopeTagValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-complianceresourceid
ccrsComplianceResourceId :: Lens' ConfigConfigRuleScope (Maybe (Val Text))
ccrsComplianceResourceId = lens _configConfigRuleScopeComplianceResourceId (\s a -> s { _configConfigRuleScopeComplianceResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-complianceresourcetypes
ccrsComplianceResourceTypes :: Lens' ConfigConfigRuleScope (Maybe [Val Text])
ccrsComplianceResourceTypes = lens _configConfigRuleScopeComplianceResourceTypes (\s a -> s { _configConfigRuleScopeComplianceResourceTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-tagkey
ccrsTagKey :: Lens' ConfigConfigRuleScope (Maybe (Val Text))
ccrsTagKey = lens _configConfigRuleScopeTagKey (\s a -> s { _configConfigRuleScopeTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-tagvalue
ccrsTagValue :: Lens' ConfigConfigRuleScope (Maybe (Val Text))
ccrsTagValue = lens _configConfigRuleScopeTagValue (\s a -> s { _configConfigRuleScopeTagValue = a })
