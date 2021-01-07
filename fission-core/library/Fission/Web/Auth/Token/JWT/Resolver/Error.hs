module Fission.Web.Auth.Token.JWT.Resolver.Error (Error (..)) where

import           Network.IPFS.CID.Types
import qualified Network.IPFS.Process.Error as IPFS.Process

import           Fission.Prelude

data Error
  = CannotResolve CID IPFS.Process.Error
  | InvalidJWT ByteString
  deriving (Show, Eq, Exception)

instance Display Error where
  display = \case
    CannotResolve cid err ->
      "Unable to resolve " <> display cid <> " because " <> display err

    InvalidJWT jwtBS ->
      "Invalid resolved JWT: " <> displayBytesUtf8 jwtBS
