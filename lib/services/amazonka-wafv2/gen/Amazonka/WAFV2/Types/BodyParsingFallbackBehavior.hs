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
-- Module      : Amazonka.WAFV2.Types.BodyParsingFallbackBehavior
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.BodyParsingFallbackBehavior
  ( BodyParsingFallbackBehavior
      ( ..,
        BodyParsingFallbackBehavior_EVALUATE_AS_STRING,
        BodyParsingFallbackBehavior_MATCH,
        BodyParsingFallbackBehavior_NO_MATCH
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype BodyParsingFallbackBehavior = BodyParsingFallbackBehavior'
  { fromBodyParsingFallbackBehavior ::
      Core.Text
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
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern BodyParsingFallbackBehavior_EVALUATE_AS_STRING :: BodyParsingFallbackBehavior
pattern BodyParsingFallbackBehavior_EVALUATE_AS_STRING = BodyParsingFallbackBehavior' "EVALUATE_AS_STRING"

pattern BodyParsingFallbackBehavior_MATCH :: BodyParsingFallbackBehavior
pattern BodyParsingFallbackBehavior_MATCH = BodyParsingFallbackBehavior' "MATCH"

pattern BodyParsingFallbackBehavior_NO_MATCH :: BodyParsingFallbackBehavior
pattern BodyParsingFallbackBehavior_NO_MATCH = BodyParsingFallbackBehavior' "NO_MATCH"

{-# COMPLETE
  BodyParsingFallbackBehavior_EVALUATE_AS_STRING,
  BodyParsingFallbackBehavior_MATCH,
  BodyParsingFallbackBehavior_NO_MATCH,
  BodyParsingFallbackBehavior'
  #-}
