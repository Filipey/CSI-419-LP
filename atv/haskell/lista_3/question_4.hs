-- (4): Escreva um código que peça para o usuário entrar com a base e a altura de um retângulo e que calcua sua área.
-- (4'): Ele deve ser apresentado em tela.

module Main where
 main :: IO()
 main = do
    putStrLn "Digite a base do retângulo"
    input <- getLine
    let base = read input :: Float
    putStrLn "Digite a altura do retângulo"
    input <- getLine
    let height = read input :: Float
    putStrLn ("A área do retângulo é " ++ show (base * height))