-- (1) Faça um programa em haskell que ordene um vetor (ordem crescente).
insertOnList :: Ord t => t -> [t] -> [t]
insertOnList x [] = [x]
insertOnList x (y:ys)
  | x <= y = x : y : ys
  | otherwise = y : insertOnList x ys


sortList :: Ord a => [a] -> [a]
sortList = foldr insertOnList []