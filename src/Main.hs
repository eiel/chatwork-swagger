{-# LANGUAGE OverloadedStrings #-}
module Main where

import Data.Aeson
import Data.Swagger
import Data.ByteString.Lazy.Char8 as B

main :: IO ()
main = do
  B.putStrLn . encode $ chatwork

hostname :: Host
hostname = Host {
    _hostName = "api.chatwork.com",
    _hostPort = Nothing
  }

chatwork :: Swagger
chatwork = mempty {
  _swaggerInfo = mempty {
    _infoTitle = "ChatWork API",
    _infoVersion = "v2"
  },
  _swaggerHost = Just hostname
}
