main = do
  putStrLn "Hello, World!"

fact(n) = if n == 0 then 1 else n * fact(n-1)

fact2(n)
  | (n) == 0 = 1
  | otherwise = n * fact2(n - 1)