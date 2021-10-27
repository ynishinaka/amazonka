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
-- Module      : Network.AWS.Kendra.Types.ConfluenceAttachmentToIndexFieldMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kendra.Types.ConfluenceAttachmentToIndexFieldMapping where

import qualified Network.AWS.Core as Core
import Network.AWS.Kendra.Types.ConfluenceAttachmentFieldName
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Defines the mapping between a field in the Confluence data source to a
-- Amazon Kendra index field.
--
-- You must first create the index field using the @UpdateIndex@ operation.
--
-- /See:/ 'newConfluenceAttachmentToIndexFieldMapping' smart constructor.
data ConfluenceAttachmentToIndexFieldMapping = ConfluenceAttachmentToIndexFieldMapping'
  { -- | The format for date fields in the data source. If the field specified in
    -- @DataSourceFieldName@ is a date field you must specify the date format.
    -- If the field is not a date field, an exception is thrown.
    dateFieldFormat :: Prelude.Maybe Prelude.Text,
    -- | The name of the field in the data source.
    --
    -- You must first create the index field using the @UpdateIndex@ operation.
    dataSourceFieldName :: Prelude.Maybe ConfluenceAttachmentFieldName,
    -- | The name of the index field to map to the Confluence data source field.
    -- The index field type must match the Confluence field type.
    indexFieldName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfluenceAttachmentToIndexFieldMapping' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dateFieldFormat', 'confluenceAttachmentToIndexFieldMapping_dateFieldFormat' - The format for date fields in the data source. If the field specified in
-- @DataSourceFieldName@ is a date field you must specify the date format.
-- If the field is not a date field, an exception is thrown.
--
-- 'dataSourceFieldName', 'confluenceAttachmentToIndexFieldMapping_dataSourceFieldName' - The name of the field in the data source.
--
-- You must first create the index field using the @UpdateIndex@ operation.
--
-- 'indexFieldName', 'confluenceAttachmentToIndexFieldMapping_indexFieldName' - The name of the index field to map to the Confluence data source field.
-- The index field type must match the Confluence field type.
newConfluenceAttachmentToIndexFieldMapping ::
  ConfluenceAttachmentToIndexFieldMapping
newConfluenceAttachmentToIndexFieldMapping =
  ConfluenceAttachmentToIndexFieldMapping'
    { dateFieldFormat =
        Prelude.Nothing,
      dataSourceFieldName =
        Prelude.Nothing,
      indexFieldName = Prelude.Nothing
    }

-- | The format for date fields in the data source. If the field specified in
-- @DataSourceFieldName@ is a date field you must specify the date format.
-- If the field is not a date field, an exception is thrown.
confluenceAttachmentToIndexFieldMapping_dateFieldFormat :: Lens.Lens' ConfluenceAttachmentToIndexFieldMapping (Prelude.Maybe Prelude.Text)
confluenceAttachmentToIndexFieldMapping_dateFieldFormat = Lens.lens (\ConfluenceAttachmentToIndexFieldMapping' {dateFieldFormat} -> dateFieldFormat) (\s@ConfluenceAttachmentToIndexFieldMapping' {} a -> s {dateFieldFormat = a} :: ConfluenceAttachmentToIndexFieldMapping)

-- | The name of the field in the data source.
--
-- You must first create the index field using the @UpdateIndex@ operation.
confluenceAttachmentToIndexFieldMapping_dataSourceFieldName :: Lens.Lens' ConfluenceAttachmentToIndexFieldMapping (Prelude.Maybe ConfluenceAttachmentFieldName)
confluenceAttachmentToIndexFieldMapping_dataSourceFieldName = Lens.lens (\ConfluenceAttachmentToIndexFieldMapping' {dataSourceFieldName} -> dataSourceFieldName) (\s@ConfluenceAttachmentToIndexFieldMapping' {} a -> s {dataSourceFieldName = a} :: ConfluenceAttachmentToIndexFieldMapping)

-- | The name of the index field to map to the Confluence data source field.
-- The index field type must match the Confluence field type.
confluenceAttachmentToIndexFieldMapping_indexFieldName :: Lens.Lens' ConfluenceAttachmentToIndexFieldMapping (Prelude.Maybe Prelude.Text)
confluenceAttachmentToIndexFieldMapping_indexFieldName = Lens.lens (\ConfluenceAttachmentToIndexFieldMapping' {indexFieldName} -> indexFieldName) (\s@ConfluenceAttachmentToIndexFieldMapping' {} a -> s {indexFieldName = a} :: ConfluenceAttachmentToIndexFieldMapping)

instance
  Core.FromJSON
    ConfluenceAttachmentToIndexFieldMapping
  where
  parseJSON =
    Core.withObject
      "ConfluenceAttachmentToIndexFieldMapping"
      ( \x ->
          ConfluenceAttachmentToIndexFieldMapping'
            Prelude.<$> (x Core..:? "DateFieldFormat")
            Prelude.<*> (x Core..:? "DataSourceFieldName")
            Prelude.<*> (x Core..:? "IndexFieldName")
      )

instance
  Prelude.Hashable
    ConfluenceAttachmentToIndexFieldMapping

instance
  Prelude.NFData
    ConfluenceAttachmentToIndexFieldMapping

instance
  Core.ToJSON
    ConfluenceAttachmentToIndexFieldMapping
  where
  toJSON ConfluenceAttachmentToIndexFieldMapping' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DateFieldFormat" Core..=)
              Prelude.<$> dateFieldFormat,
            ("DataSourceFieldName" Core..=)
              Prelude.<$> dataSourceFieldName,
            ("IndexFieldName" Core..=)
              Prelude.<$> indexFieldName
          ]
      )
