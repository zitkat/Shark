 {-# LANGUAGE ForeignFunctionInterface #-}
 

module Lib
    ( someFunc
    ) where

foreign import ccall "parq.h" sayhello :: IO ()


someFunc :: IO ()
someFunc = do
    putStrLn "Hello from Haskell"
    sayhello