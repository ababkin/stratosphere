{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html

module Stratosphere.ResourceProperties.Route53RecordSetGroupGeoLocation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Route53RecordSetGroupGeoLocation. See
-- | 'route53RecordSetGroupGeoLocation' for a more convenient constructor.
data Route53RecordSetGroupGeoLocation =
  Route53RecordSetGroupGeoLocation
  { _route53RecordSetGroupGeoLocationContinentCode :: Maybe (Val Text)
  , _route53RecordSetGroupGeoLocationCountryCode :: Maybe (Val Text)
  , _route53RecordSetGroupGeoLocationSubdivisionCode :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON Route53RecordSetGroupGeoLocation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON Route53RecordSetGroupGeoLocation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'Route53RecordSetGroupGeoLocation' containing required
-- | fields as arguments.
route53RecordSetGroupGeoLocation
  :: Route53RecordSetGroupGeoLocation
route53RecordSetGroupGeoLocation  =
  Route53RecordSetGroupGeoLocation
  { _route53RecordSetGroupGeoLocationContinentCode = Nothing
  , _route53RecordSetGroupGeoLocationCountryCode = Nothing
  , _route53RecordSetGroupGeoLocationSubdivisionCode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordsetgroup-geolocation-continentcode
rrsgglContinentCode :: Lens' Route53RecordSetGroupGeoLocation (Maybe (Val Text))
rrsgglContinentCode = lens _route53RecordSetGroupGeoLocationContinentCode (\s a -> s { _route53RecordSetGroupGeoLocationContinentCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-countrycode
rrsgglCountryCode :: Lens' Route53RecordSetGroupGeoLocation (Maybe (Val Text))
rrsgglCountryCode = lens _route53RecordSetGroupGeoLocationCountryCode (\s a -> s { _route53RecordSetGroupGeoLocationCountryCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-subdivisioncode
rrsgglSubdivisionCode :: Lens' Route53RecordSetGroupGeoLocation (Maybe (Val Text))
rrsgglSubdivisionCode = lens _route53RecordSetGroupGeoLocationSubdivisionCode (\s a -> s { _route53RecordSetGroupGeoLocationSubdivisionCode = a })
