{-# LANGUAGE OverloadedStrings #-}


import Data.Attoparsec.ByteString.Char8

import ParseCommand

x = "PUTVAL sirius.lhr.operationaldynamics.com/cpu-2/cpu-user interval=10.000 1351756697.945:0.103719"

main :: IO ()
main = do
   let re = parseOnly parseLine x
   case re of
       Left s -> putStrLn s
       Right m -> putStrLn $ show m
   return ()