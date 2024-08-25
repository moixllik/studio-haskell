module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Lib (sinusoidalWave, toDecimal)

main:: IO()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests"
    [ testCase "toDecimanl 2" $
        1.23 @?= toDecimal 2.0 1.2345

    , testCase "sinusoidalWave" $
        -2.0 @?=
            sinusoidalWave
                2.0     -- A
                4.0     -- lambda
                0.5     -- T
                0.0    -- delta
                3.0     -- x
                1.0     -- t
    ]
