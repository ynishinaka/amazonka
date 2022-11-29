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
-- Module      : Amazonka.AmplifyBackend.Types.UpdateBackendAuthUserPoolConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AmplifyBackend.Types.UpdateBackendAuthUserPoolConfig where

import Amazonka.AmplifyBackend.Types.UpdateBackendAuthForgotPasswordConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthMFAConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthOAuthConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthPasswordPolicyConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthVerificationMessageConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the Amazon Cognito user pool configuration for the
-- authorization resource to be configured for your Amplify project on an
-- update.
--
-- /See:/ 'newUpdateBackendAuthUserPoolConfig' smart constructor.
data UpdateBackendAuthUserPoolConfig = UpdateBackendAuthUserPoolConfig'
  { -- | Describes the OAuth policy and rules for your Amazon Cognito user pool,
    -- configured as a part of your Amplify project.
    oAuth :: Prelude.Maybe UpdateBackendAuthOAuthConfig,
    -- | Describes the password policy for your Amazon Cognito user pool,
    -- configured as a part of your Amplify project.
    passwordPolicy :: Prelude.Maybe UpdateBackendAuthPasswordPolicyConfig,
    -- | __(DEPRECATED)__ Describes the forgot password policy for your Amazon
    -- Cognito user pool, configured as a part of your Amplify project.
    forgotPassword :: Prelude.Maybe UpdateBackendAuthForgotPasswordConfig,
    -- | Describes the email or SMS verification message for your Amazon Cognito
    -- user pool, configured as a part of your Amplify project.
    verificationMessage :: Prelude.Maybe UpdateBackendAuthVerificationMessageConfig,
    -- | Describes whether to apply multi-factor authentication policies for your
    -- Amazon Cognito user pool configured as a part of your Amplify project.
    mfa :: Prelude.Maybe UpdateBackendAuthMFAConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBackendAuthUserPoolConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'oAuth', 'updateBackendAuthUserPoolConfig_oAuth' - Describes the OAuth policy and rules for your Amazon Cognito user pool,
-- configured as a part of your Amplify project.
--
-- 'passwordPolicy', 'updateBackendAuthUserPoolConfig_passwordPolicy' - Describes the password policy for your Amazon Cognito user pool,
-- configured as a part of your Amplify project.
--
-- 'forgotPassword', 'updateBackendAuthUserPoolConfig_forgotPassword' - __(DEPRECATED)__ Describes the forgot password policy for your Amazon
-- Cognito user pool, configured as a part of your Amplify project.
--
-- 'verificationMessage', 'updateBackendAuthUserPoolConfig_verificationMessage' - Describes the email or SMS verification message for your Amazon Cognito
-- user pool, configured as a part of your Amplify project.
--
-- 'mfa', 'updateBackendAuthUserPoolConfig_mfa' - Describes whether to apply multi-factor authentication policies for your
-- Amazon Cognito user pool configured as a part of your Amplify project.
newUpdateBackendAuthUserPoolConfig ::
  UpdateBackendAuthUserPoolConfig
newUpdateBackendAuthUserPoolConfig =
  UpdateBackendAuthUserPoolConfig'
    { oAuth =
        Prelude.Nothing,
      passwordPolicy = Prelude.Nothing,
      forgotPassword = Prelude.Nothing,
      verificationMessage = Prelude.Nothing,
      mfa = Prelude.Nothing
    }

-- | Describes the OAuth policy and rules for your Amazon Cognito user pool,
-- configured as a part of your Amplify project.
updateBackendAuthUserPoolConfig_oAuth :: Lens.Lens' UpdateBackendAuthUserPoolConfig (Prelude.Maybe UpdateBackendAuthOAuthConfig)
updateBackendAuthUserPoolConfig_oAuth = Lens.lens (\UpdateBackendAuthUserPoolConfig' {oAuth} -> oAuth) (\s@UpdateBackendAuthUserPoolConfig' {} a -> s {oAuth = a} :: UpdateBackendAuthUserPoolConfig)

-- | Describes the password policy for your Amazon Cognito user pool,
-- configured as a part of your Amplify project.
updateBackendAuthUserPoolConfig_passwordPolicy :: Lens.Lens' UpdateBackendAuthUserPoolConfig (Prelude.Maybe UpdateBackendAuthPasswordPolicyConfig)
updateBackendAuthUserPoolConfig_passwordPolicy = Lens.lens (\UpdateBackendAuthUserPoolConfig' {passwordPolicy} -> passwordPolicy) (\s@UpdateBackendAuthUserPoolConfig' {} a -> s {passwordPolicy = a} :: UpdateBackendAuthUserPoolConfig)

-- | __(DEPRECATED)__ Describes the forgot password policy for your Amazon
-- Cognito user pool, configured as a part of your Amplify project.
updateBackendAuthUserPoolConfig_forgotPassword :: Lens.Lens' UpdateBackendAuthUserPoolConfig (Prelude.Maybe UpdateBackendAuthForgotPasswordConfig)
updateBackendAuthUserPoolConfig_forgotPassword = Lens.lens (\UpdateBackendAuthUserPoolConfig' {forgotPassword} -> forgotPassword) (\s@UpdateBackendAuthUserPoolConfig' {} a -> s {forgotPassword = a} :: UpdateBackendAuthUserPoolConfig)

-- | Describes the email or SMS verification message for your Amazon Cognito
-- user pool, configured as a part of your Amplify project.
updateBackendAuthUserPoolConfig_verificationMessage :: Lens.Lens' UpdateBackendAuthUserPoolConfig (Prelude.Maybe UpdateBackendAuthVerificationMessageConfig)
updateBackendAuthUserPoolConfig_verificationMessage = Lens.lens (\UpdateBackendAuthUserPoolConfig' {verificationMessage} -> verificationMessage) (\s@UpdateBackendAuthUserPoolConfig' {} a -> s {verificationMessage = a} :: UpdateBackendAuthUserPoolConfig)

-- | Describes whether to apply multi-factor authentication policies for your
-- Amazon Cognito user pool configured as a part of your Amplify project.
updateBackendAuthUserPoolConfig_mfa :: Lens.Lens' UpdateBackendAuthUserPoolConfig (Prelude.Maybe UpdateBackendAuthMFAConfig)
updateBackendAuthUserPoolConfig_mfa = Lens.lens (\UpdateBackendAuthUserPoolConfig' {mfa} -> mfa) (\s@UpdateBackendAuthUserPoolConfig' {} a -> s {mfa = a} :: UpdateBackendAuthUserPoolConfig)

instance
  Prelude.Hashable
    UpdateBackendAuthUserPoolConfig
  where
  hashWithSalt
    _salt
    UpdateBackendAuthUserPoolConfig' {..} =
      _salt `Prelude.hashWithSalt` oAuth
        `Prelude.hashWithSalt` passwordPolicy
        `Prelude.hashWithSalt` forgotPassword
        `Prelude.hashWithSalt` verificationMessage
        `Prelude.hashWithSalt` mfa

instance
  Prelude.NFData
    UpdateBackendAuthUserPoolConfig
  where
  rnf UpdateBackendAuthUserPoolConfig' {..} =
    Prelude.rnf oAuth
      `Prelude.seq` Prelude.rnf passwordPolicy
      `Prelude.seq` Prelude.rnf forgotPassword
      `Prelude.seq` Prelude.rnf verificationMessage
      `Prelude.seq` Prelude.rnf mfa

instance Core.ToJSON UpdateBackendAuthUserPoolConfig where
  toJSON UpdateBackendAuthUserPoolConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("oAuth" Core..=) Prelude.<$> oAuth,
            ("passwordPolicy" Core..=)
              Prelude.<$> passwordPolicy,
            ("forgotPassword" Core..=)
              Prelude.<$> forgotPassword,
            ("verificationMessage" Core..=)
              Prelude.<$> verificationMessage,
            ("mfa" Core..=) Prelude.<$> mfa
          ]
      )
