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
-- Module      : Amazonka.SWF.Types.CancelWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SWF.Types.CancelWorkflowExecutionFailedEventAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.SWF.Types.CancelWorkflowExecutionFailedCause

-- | Provides the details of the @CancelWorkflowExecutionFailed@ event.
--
-- /See:/ 'newCancelWorkflowExecutionFailedEventAttributes' smart constructor.
data CancelWorkflowExecutionFailedEventAttributes = CancelWorkflowExecutionFailedEventAttributes'
  { -- | The cause of the failure. This information is generated by the system
    -- and can be useful for diagnostic purposes.
    --
    -- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
    -- because it lacked sufficient permissions. For details and example IAM
    -- policies, see
    -- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
    -- in the /Amazon SWF Developer Guide/.
    cause :: CancelWorkflowExecutionFailedCause,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the
    -- decision task that resulted in the @CancelWorkflowExecution@ decision
    -- for this cancellation request. This information can be useful for
    -- diagnosing problems by tracing back the chain of events leading up to
    -- this event.
    decisionTaskCompletedEventId :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelWorkflowExecutionFailedEventAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cause', 'cancelWorkflowExecutionFailedEventAttributes_cause' - The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
--
-- 'decisionTaskCompletedEventId', 'cancelWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @CancelWorkflowExecution@ decision
-- for this cancellation request. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
newCancelWorkflowExecutionFailedEventAttributes ::
  -- | 'cause'
  CancelWorkflowExecutionFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Prelude.Integer ->
  CancelWorkflowExecutionFailedEventAttributes
newCancelWorkflowExecutionFailedEventAttributes
  pCause_
  pDecisionTaskCompletedEventId_ =
    CancelWorkflowExecutionFailedEventAttributes'
      { cause =
          pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
cancelWorkflowExecutionFailedEventAttributes_cause :: Lens.Lens' CancelWorkflowExecutionFailedEventAttributes CancelWorkflowExecutionFailedCause
cancelWorkflowExecutionFailedEventAttributes_cause = Lens.lens (\CancelWorkflowExecutionFailedEventAttributes' {cause} -> cause) (\s@CancelWorkflowExecutionFailedEventAttributes' {} a -> s {cause = a} :: CancelWorkflowExecutionFailedEventAttributes)

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @CancelWorkflowExecution@ decision
-- for this cancellation request. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
cancelWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId :: Lens.Lens' CancelWorkflowExecutionFailedEventAttributes Prelude.Integer
cancelWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId = Lens.lens (\CancelWorkflowExecutionFailedEventAttributes' {decisionTaskCompletedEventId} -> decisionTaskCompletedEventId) (\s@CancelWorkflowExecutionFailedEventAttributes' {} a -> s {decisionTaskCompletedEventId = a} :: CancelWorkflowExecutionFailedEventAttributes)

instance
  Data.FromJSON
    CancelWorkflowExecutionFailedEventAttributes
  where
  parseJSON =
    Data.withObject
      "CancelWorkflowExecutionFailedEventAttributes"
      ( \x ->
          CancelWorkflowExecutionFailedEventAttributes'
            Prelude.<$> (x Data..: "cause")
            Prelude.<*> (x Data..: "decisionTaskCompletedEventId")
      )

instance
  Prelude.Hashable
    CancelWorkflowExecutionFailedEventAttributes
  where
  hashWithSalt
    _salt
    CancelWorkflowExecutionFailedEventAttributes' {..} =
      _salt
        `Prelude.hashWithSalt` cause
        `Prelude.hashWithSalt` decisionTaskCompletedEventId

instance
  Prelude.NFData
    CancelWorkflowExecutionFailedEventAttributes
  where
  rnf CancelWorkflowExecutionFailedEventAttributes' {..} =
    Prelude.rnf cause
      `Prelude.seq` Prelude.rnf decisionTaskCompletedEventId
