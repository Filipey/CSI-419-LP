-- (8): Escreva uma função que retorne os n primeiros elementos de uma lista
firstOnes n list
 | n == 0 = []
 | otherwise = head list : firstOnes (n - 1) (tail list)