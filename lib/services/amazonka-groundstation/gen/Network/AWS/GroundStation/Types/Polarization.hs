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
-- Module      : Amazonka.GroundStation.Types.Polarization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GroundStation.Types.Polarization
  ( Polarization
      ( ..,
        Polarization_LEFT_HAND,
        Polarization_NONE,
        Polarization_RIGHT_HAND
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Polarization = Polarization'
  { fromPolarization ::
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

pattern Polarization_LEFT_HAND :: Polarization
pattern Polarization_LEFT_HAND = Polarization' "LEFT_HAND"

pattern Polarization_NONE :: Polarization
pattern Polarization_NONE = Polarization' "NONE"

pattern Polarization_RIGHT_HAND :: Polarization
pattern Polarization_RIGHT_HAND = Polarization' "RIGHT_HAND"

{-# COMPLETE
  Polarization_LEFT_HAND,
  Polarization_NONE,
  Polarization_RIGHT_HAND,
  Polarization'
  #-}
