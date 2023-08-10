-- (9): Escreva uma função que ignore os n primeiros elemntos de uma lista e retorne o restante
ignoreN n list
  | n == 0 = list
  | otherwise = ignoreN (n - 1) (tail list)