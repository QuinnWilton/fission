module Fission.Authorization
  ( latestVersion
  -- * Reexports
  , module Fission.Authorization.Types
  , module Fission.Authorization.Potency.Types
  , module Fission.Authorization.ServerDID
  ) where

import           Fission.Authorization.Potency.Types
import           Fission.Authorization.ServerDID
import           Fission.Authorization.Types

import           Fission.SemVer.Types

latestVersion :: SemVer
latestVersion = SemVer 1 0 0 -- FIXME 0 3 1
