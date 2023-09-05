 {-# LANGUAGE ForeignFunctionInterface #-}
 

module Lib
    ( someFunc
    ) where

import Foreign.C

foreign import ccall "parq.h" sayhello :: Int -> IO ()
foreign import ccall "parq.h" file_head :: CString -> IO ()


someFunc :: IO ()
someFunc = do
    putStrLn "Hello from Haskell"
    sayhello 15
    newCString "build.sh" >>= file_head