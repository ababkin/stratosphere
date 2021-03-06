{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html

module Stratosphere.ResourceProperties.CodeBuildProjectArtifacts where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeBuildProjectArtifacts. See
-- | 'codeBuildProjectArtifacts' for a more convenient constructor.
data CodeBuildProjectArtifacts =
  CodeBuildProjectArtifacts
  { _codeBuildProjectArtifactsLocation :: Maybe (Val Text)
  , _codeBuildProjectArtifactsName :: Maybe (Val Text)
  , _codeBuildProjectArtifactsNamespaceType :: Maybe (Val Text)
  , _codeBuildProjectArtifactsPackaging :: Maybe (Val Text)
  , _codeBuildProjectArtifactsPath :: Maybe (Val Text)
  , _codeBuildProjectArtifactsType :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON CodeBuildProjectArtifacts where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON CodeBuildProjectArtifacts where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'CodeBuildProjectArtifacts' containing required fields as
-- | arguments.
codeBuildProjectArtifacts
  :: CodeBuildProjectArtifacts
codeBuildProjectArtifacts  =
  CodeBuildProjectArtifacts
  { _codeBuildProjectArtifactsLocation = Nothing
  , _codeBuildProjectArtifactsName = Nothing
  , _codeBuildProjectArtifactsNamespaceType = Nothing
  , _codeBuildProjectArtifactsPackaging = Nothing
  , _codeBuildProjectArtifactsPath = Nothing
  , _codeBuildProjectArtifactsType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-location
cbpaLocation :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaLocation = lens _codeBuildProjectArtifactsLocation (\s a -> s { _codeBuildProjectArtifactsLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-name
cbpaName :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaName = lens _codeBuildProjectArtifactsName (\s a -> s { _codeBuildProjectArtifactsName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-namespacetype
cbpaNamespaceType :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaNamespaceType = lens _codeBuildProjectArtifactsNamespaceType (\s a -> s { _codeBuildProjectArtifactsNamespaceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-packaging
cbpaPackaging :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaPackaging = lens _codeBuildProjectArtifactsPackaging (\s a -> s { _codeBuildProjectArtifactsPackaging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-path
cbpaPath :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaPath = lens _codeBuildProjectArtifactsPath (\s a -> s { _codeBuildProjectArtifactsPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-type
cbpaType :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaType = lens _codeBuildProjectArtifactsType (\s a -> s { _codeBuildProjectArtifactsType = a })
