{-# LANGUAGE TemplateHaskell, QuasiQuotes, FlexibleContexts #-}
module TensorQQ where

import Text.Peggy

genParser [("tens", "tensor")] [peggy|
tensor :: Exp
  = ident '_' ident { $$1 !! $$2 }
ident :: String
  = [a-z]+ { $1 }
|]
