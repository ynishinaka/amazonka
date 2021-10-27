{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kendra.Types.ConnectionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kendra.Types.ConnectionConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides the information necessary to connect to a database.
--
-- /See:/ 'newConnectionConfiguration' smart constructor.
data ConnectionConfiguration = ConnectionConfiguration'
  { -- | The name of the host for the database. Can be either a string
    -- (host.subdomain.domain.tld) or an IPv4 or IPv6 address.
    databaseHost :: Prelude.Text,
    -- | The port that the database uses for connections.
    databasePort :: Prelude.Natural,
    -- | The name of the database containing the document data.
    databaseName :: Prelude.Text,
    -- | The name of the table that contains the document data.
    tableName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of credentials stored in Secrets Manager.
    -- The credentials should be a user\/password pair. For more information,
    -- see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html Using a Database Data Source>.
    -- For more information about Secrets Manager, see
    -- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html What Is Secrets Manager>
    -- in the /Secrets Manager/ user guide.
    secretArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'databaseHost', 'connectionConfiguration_databaseHost' - The name of the host for the database. Can be either a string
-- (host.subdomain.domain.tld) or an IPv4 or IPv6 address.
--
-- 'databasePort', 'connectionConfiguration_databasePort' - The port that the database uses for connections.
--
-- 'databaseName', 'connectionConfiguration_databaseName' - The name of the database containing the document data.
--
-- 'tableName', 'connectionConfiguration_tableName' - The name of the table that contains the document data.
--
-- 'secretArn', 'connectionConfiguration_secretArn' - The Amazon Resource Name (ARN) of credentials stored in Secrets Manager.
-- The credentials should be a user\/password pair. For more information,
-- see
-- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html Using a Database Data Source>.
-- For more information about Secrets Manager, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html What Is Secrets Manager>
-- in the /Secrets Manager/ user guide.
newConnectionConfiguration ::
  -- | 'databaseHost'
  Prelude.Text ->
  -- | 'databasePort'
  Prelude.Natural ->
  -- | 'databaseName'
  Prelude.Text ->
  -- | 'tableName'
  Prelude.Text ->
  -- | 'secretArn'
  Prelude.Text ->
  ConnectionConfiguration
newConnectionConfiguration
  pDatabaseHost_
  pDatabasePort_
  pDatabaseName_
  pTableName_
  pSecretArn_ =
    ConnectionConfiguration'
      { databaseHost =
          pDatabaseHost_,
        databasePort = pDatabasePort_,
        databaseName = pDatabaseName_,
        tableName = pTableName_,
        secretArn = pSecretArn_
      }

-- | The name of the host for the database. Can be either a string
-- (host.subdomain.domain.tld) or an IPv4 or IPv6 address.
connectionConfiguration_databaseHost :: Lens.Lens' ConnectionConfiguration Prelude.Text
connectionConfiguration_databaseHost = Lens.lens (\ConnectionConfiguration' {databaseHost} -> databaseHost) (\s@ConnectionConfiguration' {} a -> s {databaseHost = a} :: ConnectionConfiguration)

-- | The port that the database uses for connections.
connectionConfiguration_databasePort :: Lens.Lens' ConnectionConfiguration Prelude.Natural
connectionConfiguration_databasePort = Lens.lens (\ConnectionConfiguration' {databasePort} -> databasePort) (\s@ConnectionConfiguration' {} a -> s {databasePort = a} :: ConnectionConfiguration)

-- | The name of the database containing the document data.
connectionConfiguration_databaseName :: Lens.Lens' ConnectionConfiguration Prelude.Text
connectionConfiguration_databaseName = Lens.lens (\ConnectionConfiguration' {databaseName} -> databaseName) (\s@ConnectionConfiguration' {} a -> s {databaseName = a} :: ConnectionConfiguration)

-- | The name of the table that contains the document data.
connectionConfiguration_tableName :: Lens.Lens' ConnectionConfiguration Prelude.Text
connectionConfiguration_tableName = Lens.lens (\ConnectionConfiguration' {tableName} -> tableName) (\s@ConnectionConfiguration' {} a -> s {tableName = a} :: ConnectionConfiguration)

-- | The Amazon Resource Name (ARN) of credentials stored in Secrets Manager.
-- The credentials should be a user\/password pair. For more information,
-- see
-- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html Using a Database Data Source>.
-- For more information about Secrets Manager, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html What Is Secrets Manager>
-- in the /Secrets Manager/ user guide.
connectionConfiguration_secretArn :: Lens.Lens' ConnectionConfiguration Prelude.Text
connectionConfiguration_secretArn = Lens.lens (\ConnectionConfiguration' {secretArn} -> secretArn) (\s@ConnectionConfiguration' {} a -> s {secretArn = a} :: ConnectionConfiguration)

instance Core.FromJSON ConnectionConfiguration where
  parseJSON =
    Core.withObject
      "ConnectionConfiguration"
      ( \x ->
          ConnectionConfiguration'
            Prelude.<$> (x Core..: "DatabaseHost")
            Prelude.<*> (x Core..: "DatabasePort")
            Prelude.<*> (x Core..: "DatabaseName")
            Prelude.<*> (x Core..: "TableName")
            Prelude.<*> (x Core..: "SecretArn")
      )

instance Prelude.Hashable ConnectionConfiguration

instance Prelude.NFData ConnectionConfiguration

instance Core.ToJSON ConnectionConfiguration where
  toJSON ConnectionConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DatabaseHost" Core..= databaseHost),
            Prelude.Just ("DatabasePort" Core..= databasePort),
            Prelude.Just ("DatabaseName" Core..= databaseName),
            Prelude.Just ("TableName" Core..= tableName),
            Prelude.Just ("SecretArn" Core..= secretArn)
          ]
      )
