module Lib where

perceptron ::
    (Double -> Double) -> [Double] -> [Double] -> Double -> Double
perceptron activacion factores pesos umbral = activacion z
    where
        z = productoEscalar + umbral
        productoEscalar = sum $ zipWith (*) factores pesos

heaviside :: Double -> Double
heaviside z = if z < 0 then 0 else 1
