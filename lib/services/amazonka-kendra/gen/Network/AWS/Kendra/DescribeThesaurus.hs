{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kendra.DescribeThesaurus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an existing Amazon Kendra thesaurus.
module Network.AWS.Kendra.DescribeThesaurus
  ( -- * Creating a Request
    DescribeThesaurus (..),
    newDescribeThesaurus,

    -- * Request Lenses
    describeThesaurus_id,
    describeThesaurus_indexId,

    -- * Destructuring the Response
    DescribeThesaurusResponse (..),
    newDescribeThesaurusResponse,

    -- * Response Lenses
    describeThesaurusResponse_status,
    describeThesaurusResponse_fileSizeBytes,
    describeThesaurusResponse_createdAt,
    describeThesaurusResponse_sourceS3Path,
    describeThesaurusResponse_synonymRuleCount,
    describeThesaurusResponse_name,
    describeThesaurusResponse_id,
    describeThesaurusResponse_termCount,
    describeThesaurusResponse_updatedAt,
    describeThesaurusResponse_errorMessage,
    describeThesaurusResponse_indexId,
    describeThesaurusResponse_description,
    describeThesaurusResponse_roleArn,
    describeThesaurusResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kendra.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeThesaurus' smart constructor.
data DescribeThesaurus = DescribeThesaurus'
  { -- | The identifier of the thesaurus to describe.
    id :: Prelude.Text,
    -- | The identifier of the index associated with the thesaurus to describe.
    indexId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeThesaurus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'describeThesaurus_id' - The identifier of the thesaurus to describe.
--
-- 'indexId', 'describeThesaurus_indexId' - The identifier of the index associated with the thesaurus to describe.
newDescribeThesaurus ::
  -- | 'id'
  Prelude.Text ->
  -- | 'indexId'
  Prelude.Text ->
  DescribeThesaurus
newDescribeThesaurus pId_ pIndexId_ =
  DescribeThesaurus' {id = pId_, indexId = pIndexId_}

-- | The identifier of the thesaurus to describe.
describeThesaurus_id :: Lens.Lens' DescribeThesaurus Prelude.Text
describeThesaurus_id = Lens.lens (\DescribeThesaurus' {id} -> id) (\s@DescribeThesaurus' {} a -> s {id = a} :: DescribeThesaurus)

-- | The identifier of the index associated with the thesaurus to describe.
describeThesaurus_indexId :: Lens.Lens' DescribeThesaurus Prelude.Text
describeThesaurus_indexId = Lens.lens (\DescribeThesaurus' {indexId} -> indexId) (\s@DescribeThesaurus' {} a -> s {indexId = a} :: DescribeThesaurus)

instance Core.AWSRequest DescribeThesaurus where
  type
    AWSResponse DescribeThesaurus =
      DescribeThesaurusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeThesaurusResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "FileSizeBytes")
            Prelude.<*> (x Core..?> "CreatedAt")
            Prelude.<*> (x Core..?> "SourceS3Path")
            Prelude.<*> (x Core..?> "SynonymRuleCount")
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (x Core..?> "TermCount")
            Prelude.<*> (x Core..?> "UpdatedAt")
            Prelude.<*> (x Core..?> "ErrorMessage")
            Prelude.<*> (x Core..?> "IndexId")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "RoleArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeThesaurus

instance Prelude.NFData DescribeThesaurus

instance Core.ToHeaders DescribeThesaurus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSKendraFrontendService.DescribeThesaurus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeThesaurus where
  toJSON DescribeThesaurus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Id" Core..= id),
            Prelude.Just ("IndexId" Core..= indexId)
          ]
      )

instance Core.ToPath DescribeThesaurus where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeThesaurus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeThesaurusResponse' smart constructor.
data DescribeThesaurusResponse = DescribeThesaurusResponse'
  { -- | The current status of the thesaurus. When the value is @ACTIVE@, queries
    -- are able to use the thesaurus. If the @Status@ field value is @FAILED@,
    -- the @ErrorMessage@ field provides more information.
    --
    -- If the status is @ACTIVE_BUT_UPDATE_FAILED@, it means that Amazon Kendra
    -- could not ingest the new thesaurus file. The old thesaurus file is still
    -- active.
    status :: Prelude.Maybe ThesaurusStatus,
    -- | The size of the thesaurus file in bytes.
    fileSizeBytes :: Prelude.Maybe Prelude.Integer,
    -- | The Unix datetime that the thesaurus was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    sourceS3Path :: Prelude.Maybe S3Path,
    -- | The number of synonym rules in the thesaurus file.
    synonymRuleCount :: Prelude.Maybe Prelude.Integer,
    -- | The thesaurus name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the thesaurus.
    id :: Prelude.Maybe Prelude.Text,
    -- | The number of unique terms in the thesaurus file. For example, the
    -- synonyms @a,b,c@ and @a=>d@, the term count would be 4.
    termCount :: Prelude.Maybe Prelude.Integer,
    -- | The Unix datetime that the thesaurus was last updated.
    updatedAt :: Prelude.Maybe Core.POSIX,
    -- | When the @Status@ field value is @FAILED@, the @ErrorMessage@ field
    -- provides more information.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the index associated with the thesaurus to describe.
    indexId :: Prelude.Maybe Prelude.Text,
    -- | The thesaurus description.
    description :: Prelude.Maybe Prelude.Text,
    -- | An AWS Identity and Access Management (IAM) role that gives Amazon
    -- Kendra permissions to access thesaurus file specified in @SourceS3Path@.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeThesaurusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'describeThesaurusResponse_status' - The current status of the thesaurus. When the value is @ACTIVE@, queries
-- are able to use the thesaurus. If the @Status@ field value is @FAILED@,
-- the @ErrorMessage@ field provides more information.
--
-- If the status is @ACTIVE_BUT_UPDATE_FAILED@, it means that Amazon Kendra
-- could not ingest the new thesaurus file. The old thesaurus file is still
-- active.
--
-- 'fileSizeBytes', 'describeThesaurusResponse_fileSizeBytes' - The size of the thesaurus file in bytes.
--
-- 'createdAt', 'describeThesaurusResponse_createdAt' - The Unix datetime that the thesaurus was created.
--
-- 'sourceS3Path', 'describeThesaurusResponse_sourceS3Path' - Undocumented member.
--
-- 'synonymRuleCount', 'describeThesaurusResponse_synonymRuleCount' - The number of synonym rules in the thesaurus file.
--
-- 'name', 'describeThesaurusResponse_name' - The thesaurus name.
--
-- 'id', 'describeThesaurusResponse_id' - The identifier of the thesaurus.
--
-- 'termCount', 'describeThesaurusResponse_termCount' - The number of unique terms in the thesaurus file. For example, the
-- synonyms @a,b,c@ and @a=>d@, the term count would be 4.
--
-- 'updatedAt', 'describeThesaurusResponse_updatedAt' - The Unix datetime that the thesaurus was last updated.
--
-- 'errorMessage', 'describeThesaurusResponse_errorMessage' - When the @Status@ field value is @FAILED@, the @ErrorMessage@ field
-- provides more information.
--
-- 'indexId', 'describeThesaurusResponse_indexId' - The identifier of the index associated with the thesaurus to describe.
--
-- 'description', 'describeThesaurusResponse_description' - The thesaurus description.
--
-- 'roleArn', 'describeThesaurusResponse_roleArn' - An AWS Identity and Access Management (IAM) role that gives Amazon
-- Kendra permissions to access thesaurus file specified in @SourceS3Path@.
--
-- 'httpStatus', 'describeThesaurusResponse_httpStatus' - The response's http status code.
newDescribeThesaurusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeThesaurusResponse
newDescribeThesaurusResponse pHttpStatus_ =
  DescribeThesaurusResponse'
    { status =
        Prelude.Nothing,
      fileSizeBytes = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      sourceS3Path = Prelude.Nothing,
      synonymRuleCount = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      termCount = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      indexId = Prelude.Nothing,
      description = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current status of the thesaurus. When the value is @ACTIVE@, queries
-- are able to use the thesaurus. If the @Status@ field value is @FAILED@,
-- the @ErrorMessage@ field provides more information.
--
-- If the status is @ACTIVE_BUT_UPDATE_FAILED@, it means that Amazon Kendra
-- could not ingest the new thesaurus file. The old thesaurus file is still
-- active.
describeThesaurusResponse_status :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe ThesaurusStatus)
describeThesaurusResponse_status = Lens.lens (\DescribeThesaurusResponse' {status} -> status) (\s@DescribeThesaurusResponse' {} a -> s {status = a} :: DescribeThesaurusResponse)

-- | The size of the thesaurus file in bytes.
describeThesaurusResponse_fileSizeBytes :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Integer)
describeThesaurusResponse_fileSizeBytes = Lens.lens (\DescribeThesaurusResponse' {fileSizeBytes} -> fileSizeBytes) (\s@DescribeThesaurusResponse' {} a -> s {fileSizeBytes = a} :: DescribeThesaurusResponse)

-- | The Unix datetime that the thesaurus was created.
describeThesaurusResponse_createdAt :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.UTCTime)
describeThesaurusResponse_createdAt = Lens.lens (\DescribeThesaurusResponse' {createdAt} -> createdAt) (\s@DescribeThesaurusResponse' {} a -> s {createdAt = a} :: DescribeThesaurusResponse) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
describeThesaurusResponse_sourceS3Path :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe S3Path)
describeThesaurusResponse_sourceS3Path = Lens.lens (\DescribeThesaurusResponse' {sourceS3Path} -> sourceS3Path) (\s@DescribeThesaurusResponse' {} a -> s {sourceS3Path = a} :: DescribeThesaurusResponse)

-- | The number of synonym rules in the thesaurus file.
describeThesaurusResponse_synonymRuleCount :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Integer)
describeThesaurusResponse_synonymRuleCount = Lens.lens (\DescribeThesaurusResponse' {synonymRuleCount} -> synonymRuleCount) (\s@DescribeThesaurusResponse' {} a -> s {synonymRuleCount = a} :: DescribeThesaurusResponse)

-- | The thesaurus name.
describeThesaurusResponse_name :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Text)
describeThesaurusResponse_name = Lens.lens (\DescribeThesaurusResponse' {name} -> name) (\s@DescribeThesaurusResponse' {} a -> s {name = a} :: DescribeThesaurusResponse)

-- | The identifier of the thesaurus.
describeThesaurusResponse_id :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Text)
describeThesaurusResponse_id = Lens.lens (\DescribeThesaurusResponse' {id} -> id) (\s@DescribeThesaurusResponse' {} a -> s {id = a} :: DescribeThesaurusResponse)

-- | The number of unique terms in the thesaurus file. For example, the
-- synonyms @a,b,c@ and @a=>d@, the term count would be 4.
describeThesaurusResponse_termCount :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Integer)
describeThesaurusResponse_termCount = Lens.lens (\DescribeThesaurusResponse' {termCount} -> termCount) (\s@DescribeThesaurusResponse' {} a -> s {termCount = a} :: DescribeThesaurusResponse)

-- | The Unix datetime that the thesaurus was last updated.
describeThesaurusResponse_updatedAt :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.UTCTime)
describeThesaurusResponse_updatedAt = Lens.lens (\DescribeThesaurusResponse' {updatedAt} -> updatedAt) (\s@DescribeThesaurusResponse' {} a -> s {updatedAt = a} :: DescribeThesaurusResponse) Prelude.. Lens.mapping Core._Time

-- | When the @Status@ field value is @FAILED@, the @ErrorMessage@ field
-- provides more information.
describeThesaurusResponse_errorMessage :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Text)
describeThesaurusResponse_errorMessage = Lens.lens (\DescribeThesaurusResponse' {errorMessage} -> errorMessage) (\s@DescribeThesaurusResponse' {} a -> s {errorMessage = a} :: DescribeThesaurusResponse)

-- | The identifier of the index associated with the thesaurus to describe.
describeThesaurusResponse_indexId :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Text)
describeThesaurusResponse_indexId = Lens.lens (\DescribeThesaurusResponse' {indexId} -> indexId) (\s@DescribeThesaurusResponse' {} a -> s {indexId = a} :: DescribeThesaurusResponse)

-- | The thesaurus description.
describeThesaurusResponse_description :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Text)
describeThesaurusResponse_description = Lens.lens (\DescribeThesaurusResponse' {description} -> description) (\s@DescribeThesaurusResponse' {} a -> s {description = a} :: DescribeThesaurusResponse)

-- | An AWS Identity and Access Management (IAM) role that gives Amazon
-- Kendra permissions to access thesaurus file specified in @SourceS3Path@.
describeThesaurusResponse_roleArn :: Lens.Lens' DescribeThesaurusResponse (Prelude.Maybe Prelude.Text)
describeThesaurusResponse_roleArn = Lens.lens (\DescribeThesaurusResponse' {roleArn} -> roleArn) (\s@DescribeThesaurusResponse' {} a -> s {roleArn = a} :: DescribeThesaurusResponse)

-- | The response's http status code.
describeThesaurusResponse_httpStatus :: Lens.Lens' DescribeThesaurusResponse Prelude.Int
describeThesaurusResponse_httpStatus = Lens.lens (\DescribeThesaurusResponse' {httpStatus} -> httpStatus) (\s@DescribeThesaurusResponse' {} a -> s {httpStatus = a} :: DescribeThesaurusResponse)

instance Prelude.NFData DescribeThesaurusResponse
