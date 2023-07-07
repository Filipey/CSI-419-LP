-- (1) Encontre o penúltimo item em uma lista
penult list
 | counter == length list - 2 = element
 | otherwise = penult (tail list)
  where counter = 0
        element = list !! counter

-- (2) Encontre o número de elementos de uma lista
listLength list
 | null list = counter
 | otherwise = 1 + listLength (tail list)
  where counter = 0

-- (3) Escreve uma lista ao contrário
reverseList list
 | null list = reversedList
 | otherwise = reverseList (tail list) ++ [list !! counter]
 where reversedList = []
       counter = 0