-- (7): Escrevia uma função com dois argumentos x e n, na saída da função, x deve ser replicado n vezes
replica n x
  | n == 0 = finalList
  | otherwise = x : replica (n -1) x
  where finalList = []