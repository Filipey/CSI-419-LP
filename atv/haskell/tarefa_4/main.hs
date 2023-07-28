-- (1) Faça uma função em Haskell que mostre a temperatura em graus Fahrenheit a partir de uma temperatura em Celsius
-- (2) Faça uma função que recebe um número e retorne versadeiro se o número for par
-- (3) Faça uma função que recebe uma lista de números e retorne o maior
-- (4) Faça uma função que receba um número e uma lista de número e retorna uma lista com os números que são maiores que número informado
-- (5) Faça uma função que recebe uma lista e retorna uma nova lista contendo a duplicação dos elementos da lista original
-- (6) Faça uma função que retorne true se um número é primo (para 0 < n < 100)


celciusToFahrenheit :: Fractional a => a -> a
celciusToFahrenheit x = (x * 9/5) + 32


isEven :: Integral a => a -> Bool
isEven x = mod x 2 == 0

getHigherFromList :: Ord a => [a] -> a
getHigherFromList [x] = x
getHigherFromList (x:xs) = max x (getHigherFromList xs)

getMaxInList :: (Num a, Ord a) => [a] -> a
getMaxInList list
 | null list = 0
 | head list > head (tail list) = head list
 | otherwise = getMaxInList (tail list)


filterForHigher :: Ord a => [a] -> a -> [a]
filterForHigher list number = filter (> number) list

duplicateElements :: [a] -> [a]
duplicateElements list
  | null list = list
  | otherwise  = [head list] ++ [head list] ++ duplicateElements (tail list)

isCousin :: Integral a => a -> Bool
isCousin number
  | number <= 1 || number >= 100 = False
  | otherwise = all (\x -> mod number x /= 0) [2 .. number - 1]