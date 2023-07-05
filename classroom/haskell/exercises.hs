-- (1) -> Defina a formula de bhaskara

bhaskara :: Float -> Float -> Float -> Float
bhaskara a b c = (b * b) - 4 * a * c

-- (2) -> Faça uma função em Haskell que retorne True se um elemento N está contido em uma lista

contain :: Int -> [Int] -> Bool
contain n list
  | null list = False
  | n == head list = True
  | otherwise = contain n (tail list)
