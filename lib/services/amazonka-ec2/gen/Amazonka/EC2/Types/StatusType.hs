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
-- Module      : Amazonka.EC2.Types.StatusType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.StatusType
  ( StatusType
      ( ..,
        StatusType_Failed,
        StatusType_Initializing,
        StatusType_Insufficient_data,
        StatusType_Passed
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype StatusType = StatusType'
  { fromStatusType ::
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

pattern StatusType_Failed :: StatusType
pattern StatusType_Failed = StatusType' "failed"

pattern StatusType_Initializing :: StatusType
pattern StatusType_Initializing = StatusType' "initializing"

pattern StatusType_Insufficient_data :: StatusType
pattern StatusType_Insufficient_data = StatusType' "insufficient-data"

pattern StatusType_Passed :: StatusType
pattern StatusType_Passed = StatusType' "passed"

{-# COMPLETE
  StatusType_Failed,
  StatusType_Initializing,
  StatusType_Insufficient_data,
  StatusType_Passed,
  StatusType'
  #-}
