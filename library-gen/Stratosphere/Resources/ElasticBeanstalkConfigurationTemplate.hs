{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html

module Stratosphere.Resources.ElasticBeanstalkConfigurationTemplate where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting
import Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateSourceConfiguration

-- | Full data type definition for ElasticBeanstalkConfigurationTemplate. See
-- | 'elasticBeanstalkConfigurationTemplate' for a more convenient
-- | constructor.
data ElasticBeanstalkConfigurationTemplate =
  ElasticBeanstalkConfigurationTemplate
  { _elasticBeanstalkConfigurationTemplateApplicationName :: Val Text
  , _elasticBeanstalkConfigurationTemplateDescription :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateEnvironmentId :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateOptionSettings :: Maybe [ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting]
  , _elasticBeanstalkConfigurationTemplateSolutionStackName :: Maybe (Val Text)
  , _elasticBeanstalkConfigurationTemplateSourceConfiguration :: Maybe ElasticBeanstalkConfigurationTemplateSourceConfiguration
  } deriving (Show, Eq, Generic)

instance ToJSON ElasticBeanstalkConfigurationTemplate where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

instance FromJSON ElasticBeanstalkConfigurationTemplate where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

-- | Constructor for 'ElasticBeanstalkConfigurationTemplate' containing
-- | required fields as arguments.
elasticBeanstalkConfigurationTemplate
  :: Val Text -- ^ 'ebctApplicationName'
  -> ElasticBeanstalkConfigurationTemplate
elasticBeanstalkConfigurationTemplate applicationNamearg =
  ElasticBeanstalkConfigurationTemplate
  { _elasticBeanstalkConfigurationTemplateApplicationName = applicationNamearg
  , _elasticBeanstalkConfigurationTemplateDescription = Nothing
  , _elasticBeanstalkConfigurationTemplateEnvironmentId = Nothing
  , _elasticBeanstalkConfigurationTemplateOptionSettings = Nothing
  , _elasticBeanstalkConfigurationTemplateSolutionStackName = Nothing
  , _elasticBeanstalkConfigurationTemplateSourceConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-applicationname
ebctApplicationName :: Lens' ElasticBeanstalkConfigurationTemplate (Val Text)
ebctApplicationName = lens _elasticBeanstalkConfigurationTemplateApplicationName (\s a -> s { _elasticBeanstalkConfigurationTemplateApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-description
ebctDescription :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctDescription = lens _elasticBeanstalkConfigurationTemplateDescription (\s a -> s { _elasticBeanstalkConfigurationTemplateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-environmentid
ebctEnvironmentId :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctEnvironmentId = lens _elasticBeanstalkConfigurationTemplateEnvironmentId (\s a -> s { _elasticBeanstalkConfigurationTemplateEnvironmentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-optionsettings
ebctOptionSettings :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe [ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting])
ebctOptionSettings = lens _elasticBeanstalkConfigurationTemplateOptionSettings (\s a -> s { _elasticBeanstalkConfigurationTemplateOptionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-solutionstackname
ebctSolutionStackName :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe (Val Text))
ebctSolutionStackName = lens _elasticBeanstalkConfigurationTemplateSolutionStackName (\s a -> s { _elasticBeanstalkConfigurationTemplateSolutionStackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration
ebctSourceConfiguration :: Lens' ElasticBeanstalkConfigurationTemplate (Maybe ElasticBeanstalkConfigurationTemplateSourceConfiguration)
ebctSourceConfiguration = lens _elasticBeanstalkConfigurationTemplateSourceConfiguration (\s a -> s { _elasticBeanstalkConfigurationTemplateSourceConfiguration = a })
