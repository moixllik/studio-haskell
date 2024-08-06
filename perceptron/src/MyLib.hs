module MyLib where

-- Perceptron
perceptron função_de_activação pesos entrada viés = função_de_activação (pesos * entrada + viés)

-- Sigmoide
sigmoide z = 1 / (1 + exp (-z))

-- TanH
tanh z = (exp z - exp (-z)) / (exp z + exp (-z))

-- ReLU
reLU = max 0

-- Leaky ReLU
leakyReLU z alpha = if z >= 0 then z else alpha * z

-- ELU
eLU z alpha = if z >= 0 then z else alpha exp (z - 1)

-- Softmax (?)
softmax z = exp z / exp z

-- Soma ponderada (?)
somaPonderada z = z
