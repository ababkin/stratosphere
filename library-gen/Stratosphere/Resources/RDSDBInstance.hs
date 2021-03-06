{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html

module Stratosphere.Resources.RDSDBInstance where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSDBInstance. See 'rdsdbInstance' for a
-- | more convenient constructor.
data RDSDBInstance =
  RDSDBInstance
  { _rDSDBInstanceAllocatedStorage :: Maybe (Val Text)
  , _rDSDBInstanceAllowMajorVersionUpgrade :: Maybe (Val Bool')
  , _rDSDBInstanceAutoMinorVersionUpgrade :: Maybe (Val Bool')
  , _rDSDBInstanceAvailabilityZone :: Maybe (Val Text)
  , _rDSDBInstanceBackupRetentionPeriod :: Maybe (Val Text)
  , _rDSDBInstanceCharacterSetName :: Maybe (Val Text)
  , _rDSDBInstanceDBClusterIdentifier :: Maybe (Val Text)
  , _rDSDBInstanceDBInstanceClass :: Val Text
  , _rDSDBInstanceDBInstanceIdentifier :: Maybe (Val Text)
  , _rDSDBInstanceDBName :: Maybe (Val Text)
  , _rDSDBInstanceDBParameterGroupName :: Maybe (Val Text)
  , _rDSDBInstanceDBSecurityGroups :: Maybe [Val Text]
  , _rDSDBInstanceDBSnapshotIdentifier :: Maybe (Val Text)
  , _rDSDBInstanceDBSubnetGroupName :: Maybe (Val Text)
  , _rDSDBInstanceDomain :: Maybe (Val Text)
  , _rDSDBInstanceDomainIAMRoleName :: Maybe (Val Text)
  , _rDSDBInstanceEngine :: Maybe (Val Text)
  , _rDSDBInstanceEngineVersion :: Maybe (Val Text)
  , _rDSDBInstanceIops :: Maybe (Val Integer')
  , _rDSDBInstanceKmsKeyId :: Maybe (Val Text)
  , _rDSDBInstanceLicenseModel :: Maybe (Val Text)
  , _rDSDBInstanceMasterUserPassword :: Maybe (Val Text)
  , _rDSDBInstanceMasterUsername :: Maybe (Val Text)
  , _rDSDBInstanceMonitoringInterval :: Maybe (Val Integer')
  , _rDSDBInstanceMonitoringRoleArn :: Maybe (Val Text)
  , _rDSDBInstanceMultiAZ :: Maybe (Val Bool')
  , _rDSDBInstanceOptionGroupName :: Maybe (Val Text)
  , _rDSDBInstancePort :: Maybe (Val Text)
  , _rDSDBInstancePreferredBackupWindow :: Maybe (Val Text)
  , _rDSDBInstancePreferredMaintenanceWindow :: Maybe (Val Text)
  , _rDSDBInstancePubliclyAccessible :: Maybe (Val Bool')
  , _rDSDBInstanceSourceDBInstanceIdentifier :: Maybe (Val Text)
  , _rDSDBInstanceStorageEncrypted :: Maybe (Val Bool')
  , _rDSDBInstanceStorageType :: Maybe (Val Text)
  , _rDSDBInstanceTags :: Maybe [Tag]
  , _rDSDBInstanceTimezone :: Maybe (Val Text)
  , _rDSDBInstanceVPCSecurityGroups :: Maybe [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON RDSDBInstance where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON RDSDBInstance where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'RDSDBInstance' containing required fields as arguments.
rdsdbInstance
  :: Val Text -- ^ 'rdsdbiDBInstanceClass'
  -> RDSDBInstance
rdsdbInstance dBInstanceClassarg =
  RDSDBInstance
  { _rDSDBInstanceAllocatedStorage = Nothing
  , _rDSDBInstanceAllowMajorVersionUpgrade = Nothing
  , _rDSDBInstanceAutoMinorVersionUpgrade = Nothing
  , _rDSDBInstanceAvailabilityZone = Nothing
  , _rDSDBInstanceBackupRetentionPeriod = Nothing
  , _rDSDBInstanceCharacterSetName = Nothing
  , _rDSDBInstanceDBClusterIdentifier = Nothing
  , _rDSDBInstanceDBInstanceClass = dBInstanceClassarg
  , _rDSDBInstanceDBInstanceIdentifier = Nothing
  , _rDSDBInstanceDBName = Nothing
  , _rDSDBInstanceDBParameterGroupName = Nothing
  , _rDSDBInstanceDBSecurityGroups = Nothing
  , _rDSDBInstanceDBSnapshotIdentifier = Nothing
  , _rDSDBInstanceDBSubnetGroupName = Nothing
  , _rDSDBInstanceDomain = Nothing
  , _rDSDBInstanceDomainIAMRoleName = Nothing
  , _rDSDBInstanceEngine = Nothing
  , _rDSDBInstanceEngineVersion = Nothing
  , _rDSDBInstanceIops = Nothing
  , _rDSDBInstanceKmsKeyId = Nothing
  , _rDSDBInstanceLicenseModel = Nothing
  , _rDSDBInstanceMasterUserPassword = Nothing
  , _rDSDBInstanceMasterUsername = Nothing
  , _rDSDBInstanceMonitoringInterval = Nothing
  , _rDSDBInstanceMonitoringRoleArn = Nothing
  , _rDSDBInstanceMultiAZ = Nothing
  , _rDSDBInstanceOptionGroupName = Nothing
  , _rDSDBInstancePort = Nothing
  , _rDSDBInstancePreferredBackupWindow = Nothing
  , _rDSDBInstancePreferredMaintenanceWindow = Nothing
  , _rDSDBInstancePubliclyAccessible = Nothing
  , _rDSDBInstanceSourceDBInstanceIdentifier = Nothing
  , _rDSDBInstanceStorageEncrypted = Nothing
  , _rDSDBInstanceStorageType = Nothing
  , _rDSDBInstanceTags = Nothing
  , _rDSDBInstanceTimezone = Nothing
  , _rDSDBInstanceVPCSecurityGroups = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-allocatedstorage
rdsdbiAllocatedStorage :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiAllocatedStorage = lens _rDSDBInstanceAllocatedStorage (\s a -> s { _rDSDBInstanceAllocatedStorage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-allowmajorversionupgrade
rdsdbiAllowMajorVersionUpgrade :: Lens' RDSDBInstance (Maybe (Val Bool'))
rdsdbiAllowMajorVersionUpgrade = lens _rDSDBInstanceAllowMajorVersionUpgrade (\s a -> s { _rDSDBInstanceAllowMajorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-autominorversionupgrade
rdsdbiAutoMinorVersionUpgrade :: Lens' RDSDBInstance (Maybe (Val Bool'))
rdsdbiAutoMinorVersionUpgrade = lens _rDSDBInstanceAutoMinorVersionUpgrade (\s a -> s { _rDSDBInstanceAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-availabilityzone
rdsdbiAvailabilityZone :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiAvailabilityZone = lens _rDSDBInstanceAvailabilityZone (\s a -> s { _rDSDBInstanceAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-backupretentionperiod
rdsdbiBackupRetentionPeriod :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiBackupRetentionPeriod = lens _rDSDBInstanceBackupRetentionPeriod (\s a -> s { _rDSDBInstanceBackupRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-charactersetname
rdsdbiCharacterSetName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiCharacterSetName = lens _rDSDBInstanceCharacterSetName (\s a -> s { _rDSDBInstanceCharacterSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbclusteridentifier
rdsdbiDBClusterIdentifier :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBClusterIdentifier = lens _rDSDBInstanceDBClusterIdentifier (\s a -> s { _rDSDBInstanceDBClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbinstanceclass
rdsdbiDBInstanceClass :: Lens' RDSDBInstance (Val Text)
rdsdbiDBInstanceClass = lens _rDSDBInstanceDBInstanceClass (\s a -> s { _rDSDBInstanceDBInstanceClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbinstanceidentifier
rdsdbiDBInstanceIdentifier :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBInstanceIdentifier = lens _rDSDBInstanceDBInstanceIdentifier (\s a -> s { _rDSDBInstanceDBInstanceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbname
rdsdbiDBName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBName = lens _rDSDBInstanceDBName (\s a -> s { _rDSDBInstanceDBName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbparametergroupname
rdsdbiDBParameterGroupName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBParameterGroupName = lens _rDSDBInstanceDBParameterGroupName (\s a -> s { _rDSDBInstanceDBParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsecuritygroups
rdsdbiDBSecurityGroups :: Lens' RDSDBInstance (Maybe [Val Text])
rdsdbiDBSecurityGroups = lens _rDSDBInstanceDBSecurityGroups (\s a -> s { _rDSDBInstanceDBSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsnapshotidentifier
rdsdbiDBSnapshotIdentifier :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBSnapshotIdentifier = lens _rDSDBInstanceDBSnapshotIdentifier (\s a -> s { _rDSDBInstanceDBSnapshotIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsubnetgroupname
rdsdbiDBSubnetGroupName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBSubnetGroupName = lens _rDSDBInstanceDBSubnetGroupName (\s a -> s { _rDSDBInstanceDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-domain
rdsdbiDomain :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDomain = lens _rDSDBInstanceDomain (\s a -> s { _rDSDBInstanceDomain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-domainiamrolename
rdsdbiDomainIAMRoleName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDomainIAMRoleName = lens _rDSDBInstanceDomainIAMRoleName (\s a -> s { _rDSDBInstanceDomainIAMRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-engine
rdsdbiEngine :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiEngine = lens _rDSDBInstanceEngine (\s a -> s { _rDSDBInstanceEngine = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-engineversion
rdsdbiEngineVersion :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiEngineVersion = lens _rDSDBInstanceEngineVersion (\s a -> s { _rDSDBInstanceEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-iops
rdsdbiIops :: Lens' RDSDBInstance (Maybe (Val Integer'))
rdsdbiIops = lens _rDSDBInstanceIops (\s a -> s { _rDSDBInstanceIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-kmskeyid
rdsdbiKmsKeyId :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiKmsKeyId = lens _rDSDBInstanceKmsKeyId (\s a -> s { _rDSDBInstanceKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-licensemodel
rdsdbiLicenseModel :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiLicenseModel = lens _rDSDBInstanceLicenseModel (\s a -> s { _rDSDBInstanceLicenseModel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-masteruserpassword
rdsdbiMasterUserPassword :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiMasterUserPassword = lens _rDSDBInstanceMasterUserPassword (\s a -> s { _rDSDBInstanceMasterUserPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-masterusername
rdsdbiMasterUsername :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiMasterUsername = lens _rDSDBInstanceMasterUsername (\s a -> s { _rDSDBInstanceMasterUsername = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-monitoringinterval
rdsdbiMonitoringInterval :: Lens' RDSDBInstance (Maybe (Val Integer'))
rdsdbiMonitoringInterval = lens _rDSDBInstanceMonitoringInterval (\s a -> s { _rDSDBInstanceMonitoringInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-monitoringrolearn
rdsdbiMonitoringRoleArn :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiMonitoringRoleArn = lens _rDSDBInstanceMonitoringRoleArn (\s a -> s { _rDSDBInstanceMonitoringRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-multiaz
rdsdbiMultiAZ :: Lens' RDSDBInstance (Maybe (Val Bool'))
rdsdbiMultiAZ = lens _rDSDBInstanceMultiAZ (\s a -> s { _rDSDBInstanceMultiAZ = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-optiongroupname
rdsdbiOptionGroupName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiOptionGroupName = lens _rDSDBInstanceOptionGroupName (\s a -> s { _rDSDBInstanceOptionGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-port
rdsdbiPort :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiPort = lens _rDSDBInstancePort (\s a -> s { _rDSDBInstancePort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-preferredbackupwindow
rdsdbiPreferredBackupWindow :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiPreferredBackupWindow = lens _rDSDBInstancePreferredBackupWindow (\s a -> s { _rDSDBInstancePreferredBackupWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-preferredmaintenancewindow
rdsdbiPreferredMaintenanceWindow :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiPreferredMaintenanceWindow = lens _rDSDBInstancePreferredMaintenanceWindow (\s a -> s { _rDSDBInstancePreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-publiclyaccessible
rdsdbiPubliclyAccessible :: Lens' RDSDBInstance (Maybe (Val Bool'))
rdsdbiPubliclyAccessible = lens _rDSDBInstancePubliclyAccessible (\s a -> s { _rDSDBInstancePubliclyAccessible = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-sourcedbinstanceidentifier
rdsdbiSourceDBInstanceIdentifier :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiSourceDBInstanceIdentifier = lens _rDSDBInstanceSourceDBInstanceIdentifier (\s a -> s { _rDSDBInstanceSourceDBInstanceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-storageencrypted
rdsdbiStorageEncrypted :: Lens' RDSDBInstance (Maybe (Val Bool'))
rdsdbiStorageEncrypted = lens _rDSDBInstanceStorageEncrypted (\s a -> s { _rDSDBInstanceStorageEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-storagetype
rdsdbiStorageType :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiStorageType = lens _rDSDBInstanceStorageType (\s a -> s { _rDSDBInstanceStorageType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-tags
rdsdbiTags :: Lens' RDSDBInstance (Maybe [Tag])
rdsdbiTags = lens _rDSDBInstanceTags (\s a -> s { _rDSDBInstanceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-timezone
rdsdbiTimezone :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiTimezone = lens _rDSDBInstanceTimezone (\s a -> s { _rDSDBInstanceTimezone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-vpcsecuritygroups
rdsdbiVPCSecurityGroups :: Lens' RDSDBInstance (Maybe [Val Text])
rdsdbiVPCSecurityGroups = lens _rDSDBInstanceVPCSecurityGroups (\s a -> s { _rDSDBInstanceVPCSecurityGroups = a })
