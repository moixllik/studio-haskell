module MyLib where

-- Alpha Constant
alpha :: Double
alpha = 0.01

-- Sigmoide
sigmoide :: Double -> Double
sigmoide z = 1 / (1 + exp (-z))

-- TanH
-- tanh :: Double -> Double
-- tanh z = (exp z - exp (-z)) / (exp z + exp (-z))

-- ReLU
relu :: Double -> Double
relu = max 0

-- Leaky ReLU
leakyRelu :: Double -> Double
leakyRelu z = if z > 0 then z else alpha * z

-- ELU
elu :: Double -> Double
elu z = if z > 0 then z else alpha * exp (z - 1)

-- Softmax (?)
-- softmax z = exp z / exp z

-- Soma ponderada (?)
-- somaPonderada z = z

