-- (6): Use o comando foldl para definir uma função "reverso :: [a]->[a]", ele deverá retornar uma lista de elementos na ordem inversa.
module Main where
  reverso :: [a] -> [a]
  reverso = foldl (\acc x -> x : acc ) []
  main :: IO()
  main = do
    let originalList = [1, 2, 3, 4]
    let reversedList = reverso originalList
    putStrLn ("original_list: " ++ show originalList ++ " reversed_list: " ++ show reversedList)