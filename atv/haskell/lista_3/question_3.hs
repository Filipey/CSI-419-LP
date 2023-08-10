-- (3): Use head e tail para escrever uma função que retorne o quinto elemento de uma lista
returnFifth :: [a] -> a
returnFifth list = runFunction list 0
  where
    runFunction [] _ = error "A lista não tem 5 elementos"
    runFunction (x:xs) counter
      | counter == 4 = x
      | otherwise = runFunction xs (counter + 1)