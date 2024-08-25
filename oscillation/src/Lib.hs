module Lib where

sinusoidalWave :: Double -> Double -> Double -> Double -> Double -> Double -> Double
sinusoidalWave
    amplitude   -- A: units
    wave_length -- lambda: metric
    frecuency   -- T: hz
    phase_shift -- delta: rad
    position_space  -- x: metric
    time            -- t: time
    = amplitude * sin
        ( wave_number * position_space
        - angular_frecuency * time
        + phase_shift
        )
    where
        angular_frecuency = 2 * pi / frecuency -- omega
        wave_number = 2 * pi / wave_length -- k


toDecimal :: Double -> Double -> Double
toDecimal places number = fromIntegral (truncate (number * n)) / n
    where n = 10 ** places
