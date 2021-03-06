{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html

module Stratosphere.Resources.ApiGatewayStage where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayStageMethodSetting

-- | Full data type definition for ApiGatewayStage. See 'apiGatewayStage' for
-- | a more convenient constructor.
data ApiGatewayStage =
  ApiGatewayStage
  { _apiGatewayStageCacheClusterEnabled :: Maybe (Val Bool')
  , _apiGatewayStageCacheClusterSize :: Maybe (Val Text)
  , _apiGatewayStageClientCertificateId :: Maybe (Val Text)
  , _apiGatewayStageDeploymentId :: Maybe (Val Text)
  , _apiGatewayStageDescription :: Maybe (Val Text)
  , _apiGatewayStageMethodSettings :: Maybe [ApiGatewayStageMethodSetting]
  , _apiGatewayStageRestApiId :: Maybe (Val Text)
  , _apiGatewayStageStageName :: Maybe (Val Text)
  , _apiGatewayStageVariables :: Maybe Object
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayStage where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON ApiGatewayStage where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'ApiGatewayStage' containing required fields as
-- | arguments.
apiGatewayStage
  :: ApiGatewayStage
apiGatewayStage  =
  ApiGatewayStage
  { _apiGatewayStageCacheClusterEnabled = Nothing
  , _apiGatewayStageCacheClusterSize = Nothing
  , _apiGatewayStageClientCertificateId = Nothing
  , _apiGatewayStageDeploymentId = Nothing
  , _apiGatewayStageDescription = Nothing
  , _apiGatewayStageMethodSettings = Nothing
  , _apiGatewayStageRestApiId = Nothing
  , _apiGatewayStageStageName = Nothing
  , _apiGatewayStageVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclusterenabled
agsCacheClusterEnabled :: Lens' ApiGatewayStage (Maybe (Val Bool'))
agsCacheClusterEnabled = lens _apiGatewayStageCacheClusterEnabled (\s a -> s { _apiGatewayStageCacheClusterEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclustersize
agsCacheClusterSize :: Lens' ApiGatewayStage (Maybe (Val Text))
agsCacheClusterSize = lens _apiGatewayStageCacheClusterSize (\s a -> s { _apiGatewayStageCacheClusterSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-clientcertificateid
agsClientCertificateId :: Lens' ApiGatewayStage (Maybe (Val Text))
agsClientCertificateId = lens _apiGatewayStageClientCertificateId (\s a -> s { _apiGatewayStageClientCertificateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-deploymentid
agsDeploymentId :: Lens' ApiGatewayStage (Maybe (Val Text))
agsDeploymentId = lens _apiGatewayStageDeploymentId (\s a -> s { _apiGatewayStageDeploymentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-description
agsDescription :: Lens' ApiGatewayStage (Maybe (Val Text))
agsDescription = lens _apiGatewayStageDescription (\s a -> s { _apiGatewayStageDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-methodsettings
agsMethodSettings :: Lens' ApiGatewayStage (Maybe [ApiGatewayStageMethodSetting])
agsMethodSettings = lens _apiGatewayStageMethodSettings (\s a -> s { _apiGatewayStageMethodSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-restapiid
agsRestApiId :: Lens' ApiGatewayStage (Maybe (Val Text))
agsRestApiId = lens _apiGatewayStageRestApiId (\s a -> s { _apiGatewayStageRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-stagename
agsStageName :: Lens' ApiGatewayStage (Maybe (Val Text))
agsStageName = lens _apiGatewayStageStageName (\s a -> s { _apiGatewayStageStageName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-variables
agsVariables :: Lens' ApiGatewayStage (Maybe Object)
agsVariables = lens _apiGatewayStageVariables (\s a -> s { _apiGatewayStageVariables = a })
