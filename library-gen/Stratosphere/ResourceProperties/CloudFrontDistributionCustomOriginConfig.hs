{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-customorigin.html

module Stratosphere.ResourceProperties.CloudFrontDistributionCustomOriginConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionCustomOriginConfig.
-- | See 'cloudFrontDistributionCustomOriginConfig' for a more convenient
-- | constructor.
data CloudFrontDistributionCustomOriginConfig =
  CloudFrontDistributionCustomOriginConfig
  { _cloudFrontDistributionCustomOriginConfigHTTPPort :: Maybe (Val Integer')
  , _cloudFrontDistributionCustomOriginConfigHTTPSPort :: Maybe (Val Integer')
  , _cloudFrontDistributionCustomOriginConfigOriginProtocolPolicy :: Val Text
  , _cloudFrontDistributionCustomOriginConfigOriginSSLProtocols :: Maybe [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON CloudFrontDistributionCustomOriginConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

instance FromJSON CloudFrontDistributionCustomOriginConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistributionCustomOriginConfig' containing
-- | required fields as arguments.
cloudFrontDistributionCustomOriginConfig
  :: Val Text -- ^ 'cfdcocOriginProtocolPolicy'
  -> CloudFrontDistributionCustomOriginConfig
cloudFrontDistributionCustomOriginConfig originProtocolPolicyarg =
  CloudFrontDistributionCustomOriginConfig
  { _cloudFrontDistributionCustomOriginConfigHTTPPort = Nothing
  , _cloudFrontDistributionCustomOriginConfigHTTPSPort = Nothing
  , _cloudFrontDistributionCustomOriginConfigOriginProtocolPolicy = originProtocolPolicyarg
  , _cloudFrontDistributionCustomOriginConfigOriginSSLProtocols = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-customorigin.html#cfn-cloudfront-customorigin-httpport
cfdcocHTTPPort :: Lens' CloudFrontDistributionCustomOriginConfig (Maybe (Val Integer'))
cfdcocHTTPPort = lens _cloudFrontDistributionCustomOriginConfigHTTPPort (\s a -> s { _cloudFrontDistributionCustomOriginConfigHTTPPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-customorigin.html#cfn-cloudfront-customorigin-httpsport
cfdcocHTTPSPort :: Lens' CloudFrontDistributionCustomOriginConfig (Maybe (Val Integer'))
cfdcocHTTPSPort = lens _cloudFrontDistributionCustomOriginConfigHTTPSPort (\s a -> s { _cloudFrontDistributionCustomOriginConfigHTTPSPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-customorigin.html#cfn-cloudfront-customorigin-originprotocolpolicy
cfdcocOriginProtocolPolicy :: Lens' CloudFrontDistributionCustomOriginConfig (Val Text)
cfdcocOriginProtocolPolicy = lens _cloudFrontDistributionCustomOriginConfigOriginProtocolPolicy (\s a -> s { _cloudFrontDistributionCustomOriginConfigOriginProtocolPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-customorigin.html#cfn-cloudfront-customorigin-originsslprotocols
cfdcocOriginSSLProtocols :: Lens' CloudFrontDistributionCustomOriginConfig (Maybe [Val Text])
cfdcocOriginSSLProtocols = lens _cloudFrontDistributionCustomOriginConfigOriginSSLProtocols (\s a -> s { _cloudFrontDistributionCustomOriginConfigOriginSSLProtocols = a })
