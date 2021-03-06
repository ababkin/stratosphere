{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html

module Stratosphere.ResourceProperties.ApiGatewayMethodIntegration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.ApiGatewayMethodIntegrationResponse

-- | Full data type definition for ApiGatewayMethodIntegration. See
-- | 'apiGatewayMethodIntegration' for a more convenient constructor.
data ApiGatewayMethodIntegration =
  ApiGatewayMethodIntegration
  { _apiGatewayMethodIntegrationCacheKeyParameters :: Maybe [Val Text]
  , _apiGatewayMethodIntegrationCacheNamespace :: Maybe (Val Text)
  , _apiGatewayMethodIntegrationCredentials :: Maybe (Val Text)
  , _apiGatewayMethodIntegrationIntegrationHttpMethod :: Maybe (Val HttpMethod)
  , _apiGatewayMethodIntegrationIntegrationResponses :: Maybe [ApiGatewayMethodIntegrationResponse]
  , _apiGatewayMethodIntegrationPassthroughBehavior :: Maybe (Val PassthroughBehavior)
  , _apiGatewayMethodIntegrationRequestParameters :: Maybe Object
  , _apiGatewayMethodIntegrationRequestTemplates :: Maybe Object
  , _apiGatewayMethodIntegrationType :: Maybe (Val ApiBackendType)
  , _apiGatewayMethodIntegrationUri :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayMethodIntegration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON ApiGatewayMethodIntegration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'ApiGatewayMethodIntegration' containing required fields
-- | as arguments.
apiGatewayMethodIntegration
  :: ApiGatewayMethodIntegration
apiGatewayMethodIntegration  =
  ApiGatewayMethodIntegration
  { _apiGatewayMethodIntegrationCacheKeyParameters = Nothing
  , _apiGatewayMethodIntegrationCacheNamespace = Nothing
  , _apiGatewayMethodIntegrationCredentials = Nothing
  , _apiGatewayMethodIntegrationIntegrationHttpMethod = Nothing
  , _apiGatewayMethodIntegrationIntegrationResponses = Nothing
  , _apiGatewayMethodIntegrationPassthroughBehavior = Nothing
  , _apiGatewayMethodIntegrationRequestParameters = Nothing
  , _apiGatewayMethodIntegrationRequestTemplates = Nothing
  , _apiGatewayMethodIntegrationType = Nothing
  , _apiGatewayMethodIntegrationUri = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-cachekeyparameters
agmiCacheKeyParameters :: Lens' ApiGatewayMethodIntegration (Maybe [Val Text])
agmiCacheKeyParameters = lens _apiGatewayMethodIntegrationCacheKeyParameters (\s a -> s { _apiGatewayMethodIntegrationCacheKeyParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-cachenamespace
agmiCacheNamespace :: Lens' ApiGatewayMethodIntegration (Maybe (Val Text))
agmiCacheNamespace = lens _apiGatewayMethodIntegrationCacheNamespace (\s a -> s { _apiGatewayMethodIntegrationCacheNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-credentials
agmiCredentials :: Lens' ApiGatewayMethodIntegration (Maybe (Val Text))
agmiCredentials = lens _apiGatewayMethodIntegrationCredentials (\s a -> s { _apiGatewayMethodIntegrationCredentials = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-integrationhttpmethod
agmiIntegrationHttpMethod :: Lens' ApiGatewayMethodIntegration (Maybe (Val HttpMethod))
agmiIntegrationHttpMethod = lens _apiGatewayMethodIntegrationIntegrationHttpMethod (\s a -> s { _apiGatewayMethodIntegrationIntegrationHttpMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-integrationresponses
agmiIntegrationResponses :: Lens' ApiGatewayMethodIntegration (Maybe [ApiGatewayMethodIntegrationResponse])
agmiIntegrationResponses = lens _apiGatewayMethodIntegrationIntegrationResponses (\s a -> s { _apiGatewayMethodIntegrationIntegrationResponses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-passthroughbehavior
agmiPassthroughBehavior :: Lens' ApiGatewayMethodIntegration (Maybe (Val PassthroughBehavior))
agmiPassthroughBehavior = lens _apiGatewayMethodIntegrationPassthroughBehavior (\s a -> s { _apiGatewayMethodIntegrationPassthroughBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-requestparameters
agmiRequestParameters :: Lens' ApiGatewayMethodIntegration (Maybe Object)
agmiRequestParameters = lens _apiGatewayMethodIntegrationRequestParameters (\s a -> s { _apiGatewayMethodIntegrationRequestParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-requesttemplates
agmiRequestTemplates :: Lens' ApiGatewayMethodIntegration (Maybe Object)
agmiRequestTemplates = lens _apiGatewayMethodIntegrationRequestTemplates (\s a -> s { _apiGatewayMethodIntegrationRequestTemplates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-type
agmiType :: Lens' ApiGatewayMethodIntegration (Maybe (Val ApiBackendType))
agmiType = lens _apiGatewayMethodIntegrationType (\s a -> s { _apiGatewayMethodIntegrationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-uri
agmiUri :: Lens' ApiGatewayMethodIntegration (Maybe (Val Text))
agmiUri = lens _apiGatewayMethodIntegrationUri (\s a -> s { _apiGatewayMethodIntegrationUri = a })
