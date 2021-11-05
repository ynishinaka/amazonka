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
-- Module      : Amazonka.SESV2.CreateConfigurationSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a configuration set. /Configuration sets/ are groups of rules
-- that you can apply to the emails that you send. You apply a
-- configuration set to an email by specifying the name of the
-- configuration set when you call the Amazon SES API v2. When you apply a
-- configuration set to an email, all of the rules in that configuration
-- set are applied to the email.
module Amazonka.SESV2.CreateConfigurationSet
  ( -- * Creating a Request
    CreateConfigurationSet (..),
    newCreateConfigurationSet,

    -- * Request Lenses
    createConfigurationSet_sendingOptions,
    createConfigurationSet_deliveryOptions,
    createConfigurationSet_trackingOptions,
    createConfigurationSet_reputationOptions,
    createConfigurationSet_tags,
    createConfigurationSet_suppressionOptions,
    createConfigurationSet_configurationSetName,

    -- * Destructuring the Response
    CreateConfigurationSetResponse (..),
    newCreateConfigurationSetResponse,

    -- * Response Lenses
    createConfigurationSetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SESV2.Types

-- | A request to create a configuration set.
--
-- /See:/ 'newCreateConfigurationSet' smart constructor.
data CreateConfigurationSet = CreateConfigurationSet'
  { -- | An object that defines whether or not Amazon SES can send email that you
    -- send using the configuration set.
    sendingOptions :: Prelude.Maybe SendingOptions,
    -- | An object that defines the dedicated IP pool that is used to send emails
    -- that you send using the configuration set.
    deliveryOptions :: Prelude.Maybe DeliveryOptions,
    -- | An object that defines the open and click tracking options for emails
    -- that you send using the configuration set.
    trackingOptions :: Prelude.Maybe TrackingOptions,
    -- | An object that defines whether or not Amazon SES collects reputation
    -- metrics for the emails that you send that use the configuration set.
    reputationOptions :: Prelude.Maybe ReputationOptions,
    -- | An array of objects that define the tags (keys and values) to associate
    -- with the configuration set.
    tags :: Prelude.Maybe [Tag],
    suppressionOptions :: Prelude.Maybe SuppressionOptions,
    -- | The name of the configuration set. The name can contain up to 64
    -- alphanumeric characters, including letters, numbers, hyphens (-) and
    -- underscores (_) only.
    configurationSetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateConfigurationSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sendingOptions', 'createConfigurationSet_sendingOptions' - An object that defines whether or not Amazon SES can send email that you
-- send using the configuration set.
--
-- 'deliveryOptions', 'createConfigurationSet_deliveryOptions' - An object that defines the dedicated IP pool that is used to send emails
-- that you send using the configuration set.
--
-- 'trackingOptions', 'createConfigurationSet_trackingOptions' - An object that defines the open and click tracking options for emails
-- that you send using the configuration set.
--
-- 'reputationOptions', 'createConfigurationSet_reputationOptions' - An object that defines whether or not Amazon SES collects reputation
-- metrics for the emails that you send that use the configuration set.
--
-- 'tags', 'createConfigurationSet_tags' - An array of objects that define the tags (keys and values) to associate
-- with the configuration set.
--
-- 'suppressionOptions', 'createConfigurationSet_suppressionOptions' - Undocumented member.
--
-- 'configurationSetName', 'createConfigurationSet_configurationSetName' - The name of the configuration set. The name can contain up to 64
-- alphanumeric characters, including letters, numbers, hyphens (-) and
-- underscores (_) only.
newCreateConfigurationSet ::
  -- | 'configurationSetName'
  Prelude.Text ->
  CreateConfigurationSet
newCreateConfigurationSet pConfigurationSetName_ =
  CreateConfigurationSet'
    { sendingOptions =
        Prelude.Nothing,
      deliveryOptions = Prelude.Nothing,
      trackingOptions = Prelude.Nothing,
      reputationOptions = Prelude.Nothing,
      tags = Prelude.Nothing,
      suppressionOptions = Prelude.Nothing,
      configurationSetName = pConfigurationSetName_
    }

-- | An object that defines whether or not Amazon SES can send email that you
-- send using the configuration set.
createConfigurationSet_sendingOptions :: Lens.Lens' CreateConfigurationSet (Prelude.Maybe SendingOptions)
createConfigurationSet_sendingOptions = Lens.lens (\CreateConfigurationSet' {sendingOptions} -> sendingOptions) (\s@CreateConfigurationSet' {} a -> s {sendingOptions = a} :: CreateConfigurationSet)

-- | An object that defines the dedicated IP pool that is used to send emails
-- that you send using the configuration set.
createConfigurationSet_deliveryOptions :: Lens.Lens' CreateConfigurationSet (Prelude.Maybe DeliveryOptions)
createConfigurationSet_deliveryOptions = Lens.lens (\CreateConfigurationSet' {deliveryOptions} -> deliveryOptions) (\s@CreateConfigurationSet' {} a -> s {deliveryOptions = a} :: CreateConfigurationSet)

-- | An object that defines the open and click tracking options for emails
-- that you send using the configuration set.
createConfigurationSet_trackingOptions :: Lens.Lens' CreateConfigurationSet (Prelude.Maybe TrackingOptions)
createConfigurationSet_trackingOptions = Lens.lens (\CreateConfigurationSet' {trackingOptions} -> trackingOptions) (\s@CreateConfigurationSet' {} a -> s {trackingOptions = a} :: CreateConfigurationSet)

-- | An object that defines whether or not Amazon SES collects reputation
-- metrics for the emails that you send that use the configuration set.
createConfigurationSet_reputationOptions :: Lens.Lens' CreateConfigurationSet (Prelude.Maybe ReputationOptions)
createConfigurationSet_reputationOptions = Lens.lens (\CreateConfigurationSet' {reputationOptions} -> reputationOptions) (\s@CreateConfigurationSet' {} a -> s {reputationOptions = a} :: CreateConfigurationSet)

-- | An array of objects that define the tags (keys and values) to associate
-- with the configuration set.
createConfigurationSet_tags :: Lens.Lens' CreateConfigurationSet (Prelude.Maybe [Tag])
createConfigurationSet_tags = Lens.lens (\CreateConfigurationSet' {tags} -> tags) (\s@CreateConfigurationSet' {} a -> s {tags = a} :: CreateConfigurationSet) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
createConfigurationSet_suppressionOptions :: Lens.Lens' CreateConfigurationSet (Prelude.Maybe SuppressionOptions)
createConfigurationSet_suppressionOptions = Lens.lens (\CreateConfigurationSet' {suppressionOptions} -> suppressionOptions) (\s@CreateConfigurationSet' {} a -> s {suppressionOptions = a} :: CreateConfigurationSet)

-- | The name of the configuration set. The name can contain up to 64
-- alphanumeric characters, including letters, numbers, hyphens (-) and
-- underscores (_) only.
createConfigurationSet_configurationSetName :: Lens.Lens' CreateConfigurationSet Prelude.Text
createConfigurationSet_configurationSetName = Lens.lens (\CreateConfigurationSet' {configurationSetName} -> configurationSetName) (\s@CreateConfigurationSet' {} a -> s {configurationSetName = a} :: CreateConfigurationSet)

instance Core.AWSRequest CreateConfigurationSet where
  type
    AWSResponse CreateConfigurationSet =
      CreateConfigurationSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateConfigurationSetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateConfigurationSet

instance Prelude.NFData CreateConfigurationSet

instance Core.ToHeaders CreateConfigurationSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateConfigurationSet where
  toJSON CreateConfigurationSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SendingOptions" Core..=)
              Prelude.<$> sendingOptions,
            ("DeliveryOptions" Core..=)
              Prelude.<$> deliveryOptions,
            ("TrackingOptions" Core..=)
              Prelude.<$> trackingOptions,
            ("ReputationOptions" Core..=)
              Prelude.<$> reputationOptions,
            ("Tags" Core..=) Prelude.<$> tags,
            ("SuppressionOptions" Core..=)
              Prelude.<$> suppressionOptions,
            Prelude.Just
              ( "ConfigurationSetName"
                  Core..= configurationSetName
              )
          ]
      )

instance Core.ToPath CreateConfigurationSet where
  toPath = Prelude.const "/v2/email/configuration-sets"

instance Core.ToQuery CreateConfigurationSet where
  toQuery = Prelude.const Prelude.mempty

-- | An HTTP 200 response if the request succeeds, or an error message if the
-- request fails.
--
-- /See:/ 'newCreateConfigurationSetResponse' smart constructor.
data CreateConfigurationSetResponse = CreateConfigurationSetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateConfigurationSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createConfigurationSetResponse_httpStatus' - The response's http status code.
newCreateConfigurationSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateConfigurationSetResponse
newCreateConfigurationSetResponse pHttpStatus_ =
  CreateConfigurationSetResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
createConfigurationSetResponse_httpStatus :: Lens.Lens' CreateConfigurationSetResponse Prelude.Int
createConfigurationSetResponse_httpStatus = Lens.lens (\CreateConfigurationSetResponse' {httpStatus} -> httpStatus) (\s@CreateConfigurationSetResponse' {} a -> s {httpStatus = a} :: CreateConfigurationSetResponse)

instance
  Prelude.NFData
    CreateConfigurationSetResponse
