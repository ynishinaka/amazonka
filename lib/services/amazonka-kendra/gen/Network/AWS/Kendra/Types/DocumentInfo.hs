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
-- Module      : Network.AWS.Kendra.Types.DocumentInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kendra.Types.DocumentInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.Kendra.Types.DocumentAttribute
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Identifies a document for which to retrieve status information
--
-- /See:/ 'newDocumentInfo' smart constructor.
data DocumentInfo = DocumentInfo'
  { -- | Attributes that identify a specific version of a document to check.
    --
    -- The only valid attributes are:
    --
    -- -   version
    --
    -- -   datasourceId
    --
    -- -   jobExecutionId
    --
    -- The attributes follow these rules:
    --
    -- -   @dataSourceId@ and @jobExecutionId@ must be used together.
    --
    -- -   @version@ is ignored if @dataSourceId@ and @jobExecutionId@ are not
    --     provided.
    --
    -- -   If @dataSourceId@ and @jobExecutionId@ are provided, but @version@
    --     is not, the version defaults to \"0\".
    attributes :: Prelude.Maybe [DocumentAttribute],
    -- | The unique identifier of the document.
    documentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'documentInfo_attributes' - Attributes that identify a specific version of a document to check.
--
-- The only valid attributes are:
--
-- -   version
--
-- -   datasourceId
--
-- -   jobExecutionId
--
-- The attributes follow these rules:
--
-- -   @dataSourceId@ and @jobExecutionId@ must be used together.
--
-- -   @version@ is ignored if @dataSourceId@ and @jobExecutionId@ are not
--     provided.
--
-- -   If @dataSourceId@ and @jobExecutionId@ are provided, but @version@
--     is not, the version defaults to \"0\".
--
-- 'documentId', 'documentInfo_documentId' - The unique identifier of the document.
newDocumentInfo ::
  -- | 'documentId'
  Prelude.Text ->
  DocumentInfo
newDocumentInfo pDocumentId_ =
  DocumentInfo'
    { attributes = Prelude.Nothing,
      documentId = pDocumentId_
    }

-- | Attributes that identify a specific version of a document to check.
--
-- The only valid attributes are:
--
-- -   version
--
-- -   datasourceId
--
-- -   jobExecutionId
--
-- The attributes follow these rules:
--
-- -   @dataSourceId@ and @jobExecutionId@ must be used together.
--
-- -   @version@ is ignored if @dataSourceId@ and @jobExecutionId@ are not
--     provided.
--
-- -   If @dataSourceId@ and @jobExecutionId@ are provided, but @version@
--     is not, the version defaults to \"0\".
documentInfo_attributes :: Lens.Lens' DocumentInfo (Prelude.Maybe [DocumentAttribute])
documentInfo_attributes = Lens.lens (\DocumentInfo' {attributes} -> attributes) (\s@DocumentInfo' {} a -> s {attributes = a} :: DocumentInfo) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier of the document.
documentInfo_documentId :: Lens.Lens' DocumentInfo Prelude.Text
documentInfo_documentId = Lens.lens (\DocumentInfo' {documentId} -> documentId) (\s@DocumentInfo' {} a -> s {documentId = a} :: DocumentInfo)

instance Prelude.Hashable DocumentInfo

instance Prelude.NFData DocumentInfo

instance Core.ToJSON DocumentInfo where
  toJSON DocumentInfo' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Attributes" Core..=) Prelude.<$> attributes,
            Prelude.Just ("DocumentId" Core..= documentId)
          ]
      )
