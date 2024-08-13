import Test.Tasty
import Test.Tasty.HUnit
import Lib

main = defaultMain tests

tests = testGroup "Tests"
    [ testCase "Perceptron" $
        1 @?= let
                factores = [1,0]
                pesos = [0.5,-1]
                umbral = 0.01
                activacion = heaviside
            in perceptron activacion factores pesos umbral
    ]
