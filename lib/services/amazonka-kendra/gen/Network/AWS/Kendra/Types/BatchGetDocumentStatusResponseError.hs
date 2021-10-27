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
-- Module      : Network.AWS.Kendra.Types.BatchGetDocumentStatusResponseError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kendra.Types.BatchGetDocumentStatusResponseError where

import qualified Network.AWS.Core as Core
import Network.AWS.Kendra.Types.ErrorCode
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a response when the status of a document could not be
-- retrieved.
--
-- /See:/ 'newBatchGetDocumentStatusResponseError' smart constructor.
data BatchGetDocumentStatusResponseError = BatchGetDocumentStatusResponseError'
  { -- | The unique identifier of the document whose status could not be
    -- retrieved.
    documentId :: Prelude.Maybe Prelude.Text,
    -- | Indicates the source of the error.
    errorCode :: Prelude.Maybe ErrorCode,
    -- | States that the API could not get the status of a document. This could
    -- be because the request is not valid or there is a system error.
    errorMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchGetDocumentStatusResponseError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentId', 'batchGetDocumentStatusResponseError_documentId' - The unique identifier of the document whose status could not be
-- retrieved.
--
-- 'errorCode', 'batchGetDocumentStatusResponseError_errorCode' - Indicates the source of the error.
--
-- 'errorMessage', 'batchGetDocumentStatusResponseError_errorMessage' - States that the API could not get the status of a document. This could
-- be because the request is not valid or there is a system error.
newBatchGetDocumentStatusResponseError ::
  BatchGetDocumentStatusResponseError
newBatchGetDocumentStatusResponseError =
  BatchGetDocumentStatusResponseError'
    { documentId =
        Prelude.Nothing,
      errorCode = Prelude.Nothing,
      errorMessage = Prelude.Nothing
    }

-- | The unique identifier of the document whose status could not be
-- retrieved.
batchGetDocumentStatusResponseError_documentId :: Lens.Lens' BatchGetDocumentStatusResponseError (Prelude.Maybe Prelude.Text)
batchGetDocumentStatusResponseError_documentId = Lens.lens (\BatchGetDocumentStatusResponseError' {documentId} -> documentId) (\s@BatchGetDocumentStatusResponseError' {} a -> s {documentId = a} :: BatchGetDocumentStatusResponseError)

-- | Indicates the source of the error.
batchGetDocumentStatusResponseError_errorCode :: Lens.Lens' BatchGetDocumentStatusResponseError (Prelude.Maybe ErrorCode)
batchGetDocumentStatusResponseError_errorCode = Lens.lens (\BatchGetDocumentStatusResponseError' {errorCode} -> errorCode) (\s@BatchGetDocumentStatusResponseError' {} a -> s {errorCode = a} :: BatchGetDocumentStatusResponseError)

-- | States that the API could not get the status of a document. This could
-- be because the request is not valid or there is a system error.
batchGetDocumentStatusResponseError_errorMessage :: Lens.Lens' BatchGetDocumentStatusResponseError (Prelude.Maybe Prelude.Text)
batchGetDocumentStatusResponseError_errorMessage = Lens.lens (\BatchGetDocumentStatusResponseError' {errorMessage} -> errorMessage) (\s@BatchGetDocumentStatusResponseError' {} a -> s {errorMessage = a} :: BatchGetDocumentStatusResponseError)

instance
  Core.FromJSON
    BatchGetDocumentStatusResponseError
  where
  parseJSON =
    Core.withObject
      "BatchGetDocumentStatusResponseError"
      ( \x ->
          BatchGetDocumentStatusResponseError'
            Prelude.<$> (x Core..:? "DocumentId")
            Prelude.<*> (x Core..:? "ErrorCode")
            Prelude.<*> (x Core..:? "ErrorMessage")
      )

instance
  Prelude.Hashable
    BatchGetDocumentStatusResponseError

instance
  Prelude.NFData
    BatchGetDocumentStatusResponseError
