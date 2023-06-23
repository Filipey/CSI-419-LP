factors(n) = [f | f <- [1..n], mod n f == 0]

max3 x y z
  | x >= y && x >= z = x
  | y >= x && y >= z = y
  | otherwise = z