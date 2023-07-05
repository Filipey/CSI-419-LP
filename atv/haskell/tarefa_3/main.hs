-- (1) -> Implemente uma função em Haskell Para cada assinatura abaixo:
-- funcao1::[Integer]->Integer
-- funcao2::[a] -> Int
-- funcao3::[Integer] -> [Integer]
-- funcao4::Integer->[Integer]->[Integer]

sumItens :: [Integer] -> Integer -- Equivalente à função 1, Soma todos os inteiros na lista
sumItens list
  | null list = total
  | otherwise = head list + sumItens (tail list)
  where total = 0


listLength :: [a] -> Int -- Equivalente à função 2, Retorna o tamanho da lista, independente do seu conteúdo
listLength list
  | null list = counter 
  | otherwise = 1 + listLength (tail list)
  where counter = 0


doubleItensValue :: [Integer] -> [Integer] -- Equivalente à função 3, Retorna uma nova lista com os itens dobrados
doubleItensValue list
  | null list = doubledList
  | otherwise = doubledList ++ [2 * head list] ++ doubleItensValue(tail list)
  where doubledList = []


removeItemFromList :: Integer -> [Integer] -> [Integer] -- Equivalente à função 4, Retorna uma nova lista com o item removido (se existir)
removeItemFromList item list
  | null list = newList
  | item /= head list = newList ++ [head list] ++ removeItemFromList item (tail list)
  | otherwise = removeItemFromList item (tail list)
  where newList = []


-- (2) -> Implemente a porta lógica XNOR em Haskell.

xnor :: Bool -> Bool -> Bool
xnor p q = p == q -- Verdadeiro somente se P e Q forem iguais


-- (3) -> Defina a formula de bhaskara

bhaskara :: Float -> Float -> Float -> Float
bhaskara a b c = (b * b) - 4 * a * c

-- (4) -> Faça uma função em Haskell que retorne True se um elemento N está contido em uma lista

contain :: [Int] -> Int -> Bool
contain list n
  | null list = False
  | n == head list = True
  | otherwise = contain (tail list) n
