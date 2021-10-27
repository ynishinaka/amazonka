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
-- Module      : Network.AWS.Kendra.Types.HierarchicalPrincipal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kendra.Types.HierarchicalPrincipal where

import qualified Network.AWS.Core as Core
import Network.AWS.Kendra.Types.Principal
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information to define the hierarchy for which documents users should
-- have access to.
--
-- /See:/ 'newHierarchicalPrincipal' smart constructor.
data HierarchicalPrincipal = HierarchicalPrincipal'
  { -- | A list of
    -- <https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html principal>
    -- lists that define the hierarchy for which documents users should have
    -- access to. Each hierarchical list specifies which user or group has
    -- allow or deny access for each document.
    principalList :: [Principal]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HierarchicalPrincipal' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'principalList', 'hierarchicalPrincipal_principalList' - A list of
-- <https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html principal>
-- lists that define the hierarchy for which documents users should have
-- access to. Each hierarchical list specifies which user or group has
-- allow or deny access for each document.
newHierarchicalPrincipal ::
  HierarchicalPrincipal
newHierarchicalPrincipal =
  HierarchicalPrincipal'
    { principalList =
        Prelude.mempty
    }

-- | A list of
-- <https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html principal>
-- lists that define the hierarchy for which documents users should have
-- access to. Each hierarchical list specifies which user or group has
-- allow or deny access for each document.
hierarchicalPrincipal_principalList :: Lens.Lens' HierarchicalPrincipal [Principal]
hierarchicalPrincipal_principalList = Lens.lens (\HierarchicalPrincipal' {principalList} -> principalList) (\s@HierarchicalPrincipal' {} a -> s {principalList = a} :: HierarchicalPrincipal) Prelude.. Lens.coerced

instance Prelude.Hashable HierarchicalPrincipal

instance Prelude.NFData HierarchicalPrincipal

instance Core.ToJSON HierarchicalPrincipal where
  toJSON HierarchicalPrincipal' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("PrincipalList" Core..= principalList)
          ]
      )
