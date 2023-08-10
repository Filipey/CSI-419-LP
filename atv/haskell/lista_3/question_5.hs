-- (5): Converta os seguintes comandos utilizando lambda:
-- (5'): map f xs, onde f x = x * 1 + 2
module Main where
  main :: IO()
  main = do
    let list = [1,2,3,4]
    let appliedList = map (\x -> x * 1 + 2) list
    print appliedList