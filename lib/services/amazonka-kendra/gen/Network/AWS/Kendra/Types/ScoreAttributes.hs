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
-- Module      : Network.AWS.Kendra.Types.ScoreAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kendra.Types.ScoreAttributes where

import qualified Network.AWS.Core as Core
import Network.AWS.Kendra.Types.ScoreConfidence
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a relative ranking that indicates how confident Amazon Kendra
-- is that the response matches the query.
--
-- /See:/ 'newScoreAttributes' smart constructor.
data ScoreAttributes = ScoreAttributes'
  { -- | A relative ranking for how well the response matches the query.
    scoreConfidence :: Prelude.Maybe ScoreConfidence
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScoreAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scoreConfidence', 'scoreAttributes_scoreConfidence' - A relative ranking for how well the response matches the query.
newScoreAttributes ::
  ScoreAttributes
newScoreAttributes =
  ScoreAttributes' {scoreConfidence = Prelude.Nothing}

-- | A relative ranking for how well the response matches the query.
scoreAttributes_scoreConfidence :: Lens.Lens' ScoreAttributes (Prelude.Maybe ScoreConfidence)
scoreAttributes_scoreConfidence = Lens.lens (\ScoreAttributes' {scoreConfidence} -> scoreConfidence) (\s@ScoreAttributes' {} a -> s {scoreConfidence = a} :: ScoreAttributes)

instance Core.FromJSON ScoreAttributes where
  parseJSON =
    Core.withObject
      "ScoreAttributes"
      ( \x ->
          ScoreAttributes'
            Prelude.<$> (x Core..:? "ScoreConfidence")
      )

instance Prelude.Hashable ScoreAttributes

instance Prelude.NFData ScoreAttributes
