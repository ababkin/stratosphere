{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html

module Stratosphere.Resources.SSMAssociation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.SSMAssociationParameterValues
import Stratosphere.ResourceProperties.SSMAssociationTarget

-- | Full data type definition for SSMAssociation. See 'ssmAssociation' for a
-- | more convenient constructor.
data SSMAssociation =
  SSMAssociation
  { _sSMAssociationDocumentVersion :: Maybe (Val Text)
  , _sSMAssociationInstanceId :: Maybe (Val Text)
  , _sSMAssociationName :: Val Text
  , _sSMAssociationParameters :: Maybe Object
  , _sSMAssociationScheduleExpression :: Maybe (Val Text)
  , _sSMAssociationTargets :: Maybe [SSMAssociationTarget]
  } deriving (Show, Eq, Generic)

instance ToJSON SSMAssociation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON SSMAssociation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'SSMAssociation' containing required fields as arguments.
ssmAssociation
  :: Val Text -- ^ 'ssmaName'
  -> SSMAssociation
ssmAssociation namearg =
  SSMAssociation
  { _sSMAssociationDocumentVersion = Nothing
  , _sSMAssociationInstanceId = Nothing
  , _sSMAssociationName = namearg
  , _sSMAssociationParameters = Nothing
  , _sSMAssociationScheduleExpression = Nothing
  , _sSMAssociationTargets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-documentversion
ssmaDocumentVersion :: Lens' SSMAssociation (Maybe (Val Text))
ssmaDocumentVersion = lens _sSMAssociationDocumentVersion (\s a -> s { _sSMAssociationDocumentVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-instanceid
ssmaInstanceId :: Lens' SSMAssociation (Maybe (Val Text))
ssmaInstanceId = lens _sSMAssociationInstanceId (\s a -> s { _sSMAssociationInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-name
ssmaName :: Lens' SSMAssociation (Val Text)
ssmaName = lens _sSMAssociationName (\s a -> s { _sSMAssociationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-parameters
ssmaParameters :: Lens' SSMAssociation (Maybe Object)
ssmaParameters = lens _sSMAssociationParameters (\s a -> s { _sSMAssociationParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-scheduleexpression
ssmaScheduleExpression :: Lens' SSMAssociation (Maybe (Val Text))
ssmaScheduleExpression = lens _sSMAssociationScheduleExpression (\s a -> s { _sSMAssociationScheduleExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-targets
ssmaTargets :: Lens' SSMAssociation (Maybe [SSMAssociationTarget])
ssmaTargets = lens _sSMAssociationTargets (\s a -> s { _sSMAssociationTargets = a })
