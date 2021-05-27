-- Prática 02 de Haskell
-- Nome: Lucas Caetano da Veiga

temFebre :: Float -> Bool
temFebre x = if x > 37.8 then True else False

comFebre :: [Float] -> [Float]
comFebre x = filter temFebre x


comFebre' :: [Float] -> [Float]
comFebre' x = filter (\x -> x > 37.8) x

itemize :: [String] -> [String]
itemize x = map (\x -> "<li>" ++ x ++ "</li>") x

bigCircles :: Float -> [Float] -> [Float]
bigCircles area x = filter ((\x y -> x < (pi*(y^2))) area) x


quarentena :: [(String,Float)] -> [(String,Float)]
quarentena x = filter (\(_,temp) -> temp > 37.8) x


idadesEm :: [Int] -> Int -> [Int]
idadesEm x ano = map ((\x y -> x - y)ano) x

changeNames :: [String] -> [String]
changeNames x = map (\y -> if head y == 'A' then "Super " ++ y  else y) x


onlyShorts :: [String] -> [String]
onlyShorts x = filter (\x -> length x < 5) x