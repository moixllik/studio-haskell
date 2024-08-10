module Main (main) where

import MyLib
import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
  testGroup
    "Tests"
    [ testCase "Test: sigmoide(10)" $
        (0.9999546021312976 :: Double) @?= sigmoide 10
    , testCase "Test: tanh(10)" $
        (0.9999999958776927 :: Double) @?= tanh 10
    , testCase "Test: relu(10)" $
        10 @?= relu 10
    , testCase "Test: leakyRelu(10)" $
        10 @?= leakyRelu 10.00
    , testCase "Test: elu(10)" $
        10 @?= elu 10.00
    ]

