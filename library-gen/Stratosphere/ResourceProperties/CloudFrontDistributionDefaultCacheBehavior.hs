{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html

module Stratosphere.ResourceProperties.CloudFrontDistributionDefaultCacheBehavior where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionForwardedValues

-- | Full data type definition for CloudFrontDistributionDefaultCacheBehavior.
-- | See 'cloudFrontDistributionDefaultCacheBehavior' for a more convenient
-- | constructor.
data CloudFrontDistributionDefaultCacheBehavior =
  CloudFrontDistributionDefaultCacheBehavior
  { _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods :: Maybe [Val Text]
  , _cloudFrontDistributionDefaultCacheBehaviorCachedMethods :: Maybe [Val Text]
  , _cloudFrontDistributionDefaultCacheBehaviorCompress :: Maybe (Val Bool')
  , _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionDefaultCacheBehaviorForwardedValues :: CloudFrontDistributionForwardedValues
  , _cloudFrontDistributionDefaultCacheBehaviorMaxTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionDefaultCacheBehaviorMinTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming :: Maybe (Val Bool')
  , _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId :: Val Text
  , _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners :: Maybe [Val Text]
  , _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON CloudFrontDistributionDefaultCacheBehavior where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 43, omitNothingFields = True }

instance FromJSON CloudFrontDistributionDefaultCacheBehavior where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 43, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistributionDefaultCacheBehavior' containing
-- | required fields as arguments.
cloudFrontDistributionDefaultCacheBehavior
  :: CloudFrontDistributionForwardedValues -- ^ 'cfddcbForwardedValues'
  -> Val Text -- ^ 'cfddcbTargetOriginId'
  -> Val Text -- ^ 'cfddcbViewerProtocolPolicy'
  -> CloudFrontDistributionDefaultCacheBehavior
cloudFrontDistributionDefaultCacheBehavior forwardedValuesarg targetOriginIdarg viewerProtocolPolicyarg =
  CloudFrontDistributionDefaultCacheBehavior
  { _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorCachedMethods = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorCompress = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorForwardedValues = forwardedValuesarg
  , _cloudFrontDistributionDefaultCacheBehaviorMaxTTL = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorMinTTL = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId = targetOriginIdarg
  , _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy = viewerProtocolPolicyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-allowedmethods
cfddcbAllowedMethods :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe [Val Text])
cfddcbAllowedMethods = lens _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-cachedmethods
cfddcbCachedMethods :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe [Val Text])
cfddcbCachedMethods = lens _cloudFrontDistributionDefaultCacheBehaviorCachedMethods (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorCachedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-compress
cfddcbCompress :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Bool'))
cfddcbCompress = lens _cloudFrontDistributionDefaultCacheBehaviorCompress (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorCompress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-defaultttl
cfddcbDefaultTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Integer'))
cfddcbDefaultTTL = lens _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-forwardedvalues
cfddcbForwardedValues :: Lens' CloudFrontDistributionDefaultCacheBehavior CloudFrontDistributionForwardedValues
cfddcbForwardedValues = lens _cloudFrontDistributionDefaultCacheBehaviorForwardedValues (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorForwardedValues = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-maxttl
cfddcbMaxTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Integer'))
cfddcbMaxTTL = lens _cloudFrontDistributionDefaultCacheBehaviorMaxTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorMaxTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-minttl
cfddcbMinTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Integer'))
cfddcbMinTTL = lens _cloudFrontDistributionDefaultCacheBehaviorMinTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorMinTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-smoothstreaming
cfddcbSmoothStreaming :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Bool'))
cfddcbSmoothStreaming = lens _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-targetoriginid
cfddcbTargetOriginId :: Lens' CloudFrontDistributionDefaultCacheBehavior (Val Text)
cfddcbTargetOriginId = lens _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-trustedsigners
cfddcbTrustedSigners :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe [Val Text])
cfddcbTrustedSigners = lens _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-viewerprotocolpolicy
cfddcbViewerProtocolPolicy :: Lens' CloudFrontDistributionDefaultCacheBehavior (Val Text)
cfddcbViewerProtocolPolicy = lens _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy = a })
