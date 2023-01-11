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
-- Module      : Amazonka.IAM.GetOrganizationsAccessReport
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the service last accessed data report for Organizations that
-- was previously generated using the @ GenerateOrganizationsAccessReport @
-- operation. This operation retrieves the status of your report job and
-- the report contents.
--
-- Depending on the parameters that you passed when you generated the
-- report, the data returned could include different information. For
-- details, see GenerateOrganizationsAccessReport.
--
-- To call this operation, you must be signed in to the management account
-- in your organization. SCPs must be enabled for your organization root.
-- You must have permissions to perform this operation. For more
-- information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html Refining permissions using service last accessed data>
-- in the /IAM User Guide/.
--
-- For each service that principals in an account (root users, IAM users,
-- or IAM roles) could access using SCPs, the operation returns details
-- about the most recent access attempt. If there was no attempt, the
-- service is listed without details about the most recent attempt to
-- access the service. If the operation fails, it returns the reason that
-- it failed.
--
-- By default, the list is sorted by service namespace.
module Amazonka.IAM.GetOrganizationsAccessReport
  ( -- * Creating a Request
    GetOrganizationsAccessReport (..),
    newGetOrganizationsAccessReport,

    -- * Request Lenses
    getOrganizationsAccessReport_marker,
    getOrganizationsAccessReport_maxItems,
    getOrganizationsAccessReport_sortKey,
    getOrganizationsAccessReport_jobId,

    -- * Destructuring the Response
    GetOrganizationsAccessReportResponse (..),
    newGetOrganizationsAccessReportResponse,

    -- * Response Lenses
    getOrganizationsAccessReportResponse_accessDetails,
    getOrganizationsAccessReportResponse_errorDetails,
    getOrganizationsAccessReportResponse_isTruncated,
    getOrganizationsAccessReportResponse_jobCompletionDate,
    getOrganizationsAccessReportResponse_marker,
    getOrganizationsAccessReportResponse_numberOfServicesAccessible,
    getOrganizationsAccessReportResponse_numberOfServicesNotAccessed,
    getOrganizationsAccessReportResponse_httpStatus,
    getOrganizationsAccessReportResponse_jobStatus,
    getOrganizationsAccessReportResponse_jobCreationDate,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IAM.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetOrganizationsAccessReport' smart constructor.
data GetOrganizationsAccessReport = GetOrganizationsAccessReport'
  { -- | Use this parameter only when paginating results and only after you
    -- receive a response indicating that the results are truncated. Set it to
    -- the value of the @Marker@ element in the response that you received to
    -- indicate where the next call should start.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Use this only when paginating results to indicate the maximum number of
    -- items you want in the response. If additional items exist beyond the
    -- maximum you specify, the @IsTruncated@ response element is @true@.
    --
    -- If you do not include this parameter, the number of items defaults to
    -- 100. Note that IAM might return fewer results, even when there are more
    -- results available. In that case, the @IsTruncated@ response element
    -- returns @true@, and @Marker@ contains a value to include in the
    -- subsequent call that tells the service where to continue from.
    maxItems :: Prelude.Maybe Prelude.Natural,
    -- | The key that is used to sort the results. If you choose the namespace
    -- key, the results are returned in alphabetical order. If you choose the
    -- time key, the results are sorted numerically by the date and time.
    sortKey :: Prelude.Maybe SortKeyType,
    -- | The identifier of the request generated by the
    -- GenerateOrganizationsAccessReport operation.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetOrganizationsAccessReport' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'getOrganizationsAccessReport_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
--
-- 'maxItems', 'getOrganizationsAccessReport_maxItems' - Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
--
-- 'sortKey', 'getOrganizationsAccessReport_sortKey' - The key that is used to sort the results. If you choose the namespace
-- key, the results are returned in alphabetical order. If you choose the
-- time key, the results are sorted numerically by the date and time.
--
-- 'jobId', 'getOrganizationsAccessReport_jobId' - The identifier of the request generated by the
-- GenerateOrganizationsAccessReport operation.
newGetOrganizationsAccessReport ::
  -- | 'jobId'
  Prelude.Text ->
  GetOrganizationsAccessReport
newGetOrganizationsAccessReport pJobId_ =
  GetOrganizationsAccessReport'
    { marker =
        Prelude.Nothing,
      maxItems = Prelude.Nothing,
      sortKey = Prelude.Nothing,
      jobId = pJobId_
    }

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
getOrganizationsAccessReport_marker :: Lens.Lens' GetOrganizationsAccessReport (Prelude.Maybe Prelude.Text)
getOrganizationsAccessReport_marker = Lens.lens (\GetOrganizationsAccessReport' {marker} -> marker) (\s@GetOrganizationsAccessReport' {} a -> s {marker = a} :: GetOrganizationsAccessReport)

-- | Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
getOrganizationsAccessReport_maxItems :: Lens.Lens' GetOrganizationsAccessReport (Prelude.Maybe Prelude.Natural)
getOrganizationsAccessReport_maxItems = Lens.lens (\GetOrganizationsAccessReport' {maxItems} -> maxItems) (\s@GetOrganizationsAccessReport' {} a -> s {maxItems = a} :: GetOrganizationsAccessReport)

-- | The key that is used to sort the results. If you choose the namespace
-- key, the results are returned in alphabetical order. If you choose the
-- time key, the results are sorted numerically by the date and time.
getOrganizationsAccessReport_sortKey :: Lens.Lens' GetOrganizationsAccessReport (Prelude.Maybe SortKeyType)
getOrganizationsAccessReport_sortKey = Lens.lens (\GetOrganizationsAccessReport' {sortKey} -> sortKey) (\s@GetOrganizationsAccessReport' {} a -> s {sortKey = a} :: GetOrganizationsAccessReport)

-- | The identifier of the request generated by the
-- GenerateOrganizationsAccessReport operation.
getOrganizationsAccessReport_jobId :: Lens.Lens' GetOrganizationsAccessReport Prelude.Text
getOrganizationsAccessReport_jobId = Lens.lens (\GetOrganizationsAccessReport' {jobId} -> jobId) (\s@GetOrganizationsAccessReport' {} a -> s {jobId = a} :: GetOrganizationsAccessReport)

instance Core.AWSRequest GetOrganizationsAccessReport where
  type
    AWSResponse GetOrganizationsAccessReport =
      GetOrganizationsAccessReportResponse
  request overrides =
    Request.postQuery (overrides defaultService)
  response =
    Response.receiveXMLWrapper
      "GetOrganizationsAccessReportResult"
      ( \s h x ->
          GetOrganizationsAccessReportResponse'
            Prelude.<$> ( x Data..@? "AccessDetails" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Data.parseXMLList "member")
                        )
            Prelude.<*> (x Data..@? "ErrorDetails")
            Prelude.<*> (x Data..@? "IsTruncated")
            Prelude.<*> (x Data..@? "JobCompletionDate")
            Prelude.<*> (x Data..@? "Marker")
            Prelude.<*> (x Data..@? "NumberOfServicesAccessible")
            Prelude.<*> (x Data..@? "NumberOfServicesNotAccessed")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..@ "JobStatus")
            Prelude.<*> (x Data..@ "JobCreationDate")
      )

instance
  Prelude.Hashable
    GetOrganizationsAccessReport
  where
  hashWithSalt _salt GetOrganizationsAccessReport' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` maxItems
      `Prelude.hashWithSalt` sortKey
      `Prelude.hashWithSalt` jobId

instance Prelude.NFData GetOrganizationsAccessReport where
  rnf GetOrganizationsAccessReport' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf maxItems
      `Prelude.seq` Prelude.rnf sortKey
      `Prelude.seq` Prelude.rnf jobId

instance Data.ToHeaders GetOrganizationsAccessReport where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath GetOrganizationsAccessReport where
  toPath = Prelude.const "/"

instance Data.ToQuery GetOrganizationsAccessReport where
  toQuery GetOrganizationsAccessReport' {..} =
    Prelude.mconcat
      [ "Action"
          Data.=: ( "GetOrganizationsAccessReport" ::
                      Prelude.ByteString
                  ),
        "Version"
          Data.=: ("2010-05-08" :: Prelude.ByteString),
        "Marker" Data.=: marker,
        "MaxItems" Data.=: maxItems,
        "SortKey" Data.=: sortKey,
        "JobId" Data.=: jobId
      ]

-- | /See:/ 'newGetOrganizationsAccessReportResponse' smart constructor.
data GetOrganizationsAccessReportResponse = GetOrganizationsAccessReportResponse'
  { -- | An object that contains details about the most recent attempt to access
    -- the service.
    accessDetails :: Prelude.Maybe [AccessDetail],
    errorDetails :: Prelude.Maybe ErrorDetails,
    -- | A flag that indicates whether there are more items to return. If your
    -- results were truncated, you can make a subsequent pagination request
    -- using the @Marker@ request parameter to retrieve more items. Note that
    -- IAM might return fewer than the @MaxItems@ number of results even when
    -- there are more results available. We recommend that you check
    -- @IsTruncated@ after every call to ensure that you receive all your
    -- results.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | The date and time,
    -- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- generated report job was completed or failed.
    --
    -- This field is null if the job is still in progress, as indicated by a
    -- job status value of @IN_PROGRESS@.
    jobCompletionDate :: Prelude.Maybe Data.ISO8601,
    -- | When @IsTruncated@ is @true@, this element is present and contains the
    -- value to use for the @Marker@ parameter in a subsequent pagination
    -- request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The number of services that the applicable SCPs allow account principals
    -- to access.
    numberOfServicesAccessible :: Prelude.Maybe Prelude.Int,
    -- | The number of services that account principals are allowed but did not
    -- attempt to access.
    numberOfServicesNotAccessed :: Prelude.Maybe Prelude.Int,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The status of the job.
    jobStatus :: JobStatusType,
    -- | The date and time,
    -- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- report job was created.
    jobCreationDate :: Data.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetOrganizationsAccessReportResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessDetails', 'getOrganizationsAccessReportResponse_accessDetails' - An object that contains details about the most recent attempt to access
-- the service.
--
-- 'errorDetails', 'getOrganizationsAccessReportResponse_errorDetails' - Undocumented member.
--
-- 'isTruncated', 'getOrganizationsAccessReportResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
--
-- 'jobCompletionDate', 'getOrganizationsAccessReportResponse_jobCompletionDate' - The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- generated report job was completed or failed.
--
-- This field is null if the job is still in progress, as indicated by a
-- job status value of @IN_PROGRESS@.
--
-- 'marker', 'getOrganizationsAccessReportResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'numberOfServicesAccessible', 'getOrganizationsAccessReportResponse_numberOfServicesAccessible' - The number of services that the applicable SCPs allow account principals
-- to access.
--
-- 'numberOfServicesNotAccessed', 'getOrganizationsAccessReportResponse_numberOfServicesNotAccessed' - The number of services that account principals are allowed but did not
-- attempt to access.
--
-- 'httpStatus', 'getOrganizationsAccessReportResponse_httpStatus' - The response's http status code.
--
-- 'jobStatus', 'getOrganizationsAccessReportResponse_jobStatus' - The status of the job.
--
-- 'jobCreationDate', 'getOrganizationsAccessReportResponse_jobCreationDate' - The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- report job was created.
newGetOrganizationsAccessReportResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'jobStatus'
  JobStatusType ->
  -- | 'jobCreationDate'
  Prelude.UTCTime ->
  GetOrganizationsAccessReportResponse
newGetOrganizationsAccessReportResponse
  pHttpStatus_
  pJobStatus_
  pJobCreationDate_ =
    GetOrganizationsAccessReportResponse'
      { accessDetails =
          Prelude.Nothing,
        errorDetails = Prelude.Nothing,
        isTruncated = Prelude.Nothing,
        jobCompletionDate = Prelude.Nothing,
        marker = Prelude.Nothing,
        numberOfServicesAccessible =
          Prelude.Nothing,
        numberOfServicesNotAccessed =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        jobStatus = pJobStatus_,
        jobCreationDate =
          Data._Time Lens.# pJobCreationDate_
      }

-- | An object that contains details about the most recent attempt to access
-- the service.
getOrganizationsAccessReportResponse_accessDetails :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe [AccessDetail])
getOrganizationsAccessReportResponse_accessDetails = Lens.lens (\GetOrganizationsAccessReportResponse' {accessDetails} -> accessDetails) (\s@GetOrganizationsAccessReportResponse' {} a -> s {accessDetails = a} :: GetOrganizationsAccessReportResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
getOrganizationsAccessReportResponse_errorDetails :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe ErrorDetails)
getOrganizationsAccessReportResponse_errorDetails = Lens.lens (\GetOrganizationsAccessReportResponse' {errorDetails} -> errorDetails) (\s@GetOrganizationsAccessReportResponse' {} a -> s {errorDetails = a} :: GetOrganizationsAccessReportResponse)

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
getOrganizationsAccessReportResponse_isTruncated :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.Bool)
getOrganizationsAccessReportResponse_isTruncated = Lens.lens (\GetOrganizationsAccessReportResponse' {isTruncated} -> isTruncated) (\s@GetOrganizationsAccessReportResponse' {} a -> s {isTruncated = a} :: GetOrganizationsAccessReportResponse)

-- | The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- generated report job was completed or failed.
--
-- This field is null if the job is still in progress, as indicated by a
-- job status value of @IN_PROGRESS@.
getOrganizationsAccessReportResponse_jobCompletionDate :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.UTCTime)
getOrganizationsAccessReportResponse_jobCompletionDate = Lens.lens (\GetOrganizationsAccessReportResponse' {jobCompletionDate} -> jobCompletionDate) (\s@GetOrganizationsAccessReportResponse' {} a -> s {jobCompletionDate = a} :: GetOrganizationsAccessReportResponse) Prelude.. Lens.mapping Data._Time

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
getOrganizationsAccessReportResponse_marker :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.Text)
getOrganizationsAccessReportResponse_marker = Lens.lens (\GetOrganizationsAccessReportResponse' {marker} -> marker) (\s@GetOrganizationsAccessReportResponse' {} a -> s {marker = a} :: GetOrganizationsAccessReportResponse)

-- | The number of services that the applicable SCPs allow account principals
-- to access.
getOrganizationsAccessReportResponse_numberOfServicesAccessible :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.Int)
getOrganizationsAccessReportResponse_numberOfServicesAccessible = Lens.lens (\GetOrganizationsAccessReportResponse' {numberOfServicesAccessible} -> numberOfServicesAccessible) (\s@GetOrganizationsAccessReportResponse' {} a -> s {numberOfServicesAccessible = a} :: GetOrganizationsAccessReportResponse)

-- | The number of services that account principals are allowed but did not
-- attempt to access.
getOrganizationsAccessReportResponse_numberOfServicesNotAccessed :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.Int)
getOrganizationsAccessReportResponse_numberOfServicesNotAccessed = Lens.lens (\GetOrganizationsAccessReportResponse' {numberOfServicesNotAccessed} -> numberOfServicesNotAccessed) (\s@GetOrganizationsAccessReportResponse' {} a -> s {numberOfServicesNotAccessed = a} :: GetOrganizationsAccessReportResponse)

-- | The response's http status code.
getOrganizationsAccessReportResponse_httpStatus :: Lens.Lens' GetOrganizationsAccessReportResponse Prelude.Int
getOrganizationsAccessReportResponse_httpStatus = Lens.lens (\GetOrganizationsAccessReportResponse' {httpStatus} -> httpStatus) (\s@GetOrganizationsAccessReportResponse' {} a -> s {httpStatus = a} :: GetOrganizationsAccessReportResponse)

-- | The status of the job.
getOrganizationsAccessReportResponse_jobStatus :: Lens.Lens' GetOrganizationsAccessReportResponse JobStatusType
getOrganizationsAccessReportResponse_jobStatus = Lens.lens (\GetOrganizationsAccessReportResponse' {jobStatus} -> jobStatus) (\s@GetOrganizationsAccessReportResponse' {} a -> s {jobStatus = a} :: GetOrganizationsAccessReportResponse)

-- | The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- report job was created.
getOrganizationsAccessReportResponse_jobCreationDate :: Lens.Lens' GetOrganizationsAccessReportResponse Prelude.UTCTime
getOrganizationsAccessReportResponse_jobCreationDate = Lens.lens (\GetOrganizationsAccessReportResponse' {jobCreationDate} -> jobCreationDate) (\s@GetOrganizationsAccessReportResponse' {} a -> s {jobCreationDate = a} :: GetOrganizationsAccessReportResponse) Prelude.. Data._Time

instance
  Prelude.NFData
    GetOrganizationsAccessReportResponse
  where
  rnf GetOrganizationsAccessReportResponse' {..} =
    Prelude.rnf accessDetails
      `Prelude.seq` Prelude.rnf errorDetails
      `Prelude.seq` Prelude.rnf isTruncated
      `Prelude.seq` Prelude.rnf jobCompletionDate
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf numberOfServicesAccessible
      `Prelude.seq` Prelude.rnf numberOfServicesNotAccessed
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf jobStatus
      `Prelude.seq` Prelude.rnf jobCreationDate
