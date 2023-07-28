data Forma = Cylinder { r :: Float, h :: Float } deriving (Eq, Ord, Show)


calcArea :: Forma -> Float
calcArea (Cylinder r h) = 2 * pi * r * (r + h)


returnTheHigher :: Forma -> Forma -> Forma
returnTheHigher cylinder1 cylinder2
 | calcArea cylinder1 >= calcArea cylinder2 = cylinder1
 | otherwise = cylinder2

-- Para usar a função returnTheHigher, declare o cylinder1 e o cylinder2 no REPL do GHCI e chame a função returnTheHigher cylinder1 cylinder2