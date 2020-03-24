module Fission.Web.User.WhoAmI
  ( API
  , server
  ) where

import Database.Esqueleto (Entity (..))
import Servant

import Fission.Prelude
import Fission.Models
import Fission.User.Username.Types

type API
  =  Summary "Get your username"
  :> Get '[PlainText, JSON] Username

server :: Monad m => Entity User -> ServerT API m
server (Entity _ User { userUsername }) = return userUsername
