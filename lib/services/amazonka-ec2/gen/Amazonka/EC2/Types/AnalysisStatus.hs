{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EC2.Types.AnalysisStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.AnalysisStatus
  ( AnalysisStatus
      ( ..,
        AnalysisStatus_Failed,
        AnalysisStatus_Running,
        AnalysisStatus_Succeeded
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype AnalysisStatus = AnalysisStatus'
  { fromAnalysisStatus ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern AnalysisStatus_Failed :: AnalysisStatus
pattern AnalysisStatus_Failed = AnalysisStatus' "failed"

pattern AnalysisStatus_Running :: AnalysisStatus
pattern AnalysisStatus_Running = AnalysisStatus' "running"

pattern AnalysisStatus_Succeeded :: AnalysisStatus
pattern AnalysisStatus_Succeeded = AnalysisStatus' "succeeded"

{-# COMPLETE
  AnalysisStatus_Failed,
  AnalysisStatus_Running,
  AnalysisStatus_Succeeded,
  AnalysisStatus'
  #-}
