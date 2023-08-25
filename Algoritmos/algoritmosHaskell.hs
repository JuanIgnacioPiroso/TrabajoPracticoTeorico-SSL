busquedaLineal :: Eq a => a -> [a] -> Bool
busquedaLineal [] _ = False
busquedaLineal (x:xs) elemento | x == elemento = True
                               | otherwise = busquedaLineal xs element


ordenamientoBurbuja :: Ord a => [a] -> [a]
ordenamientoBurbuja lista = foldl cambiarHasta [] lista

cambiarHasta :: Ord b => [b] -> b -> [b]
cambiarHasta [] elemento = [elemento]
cambiarHasta (siguienteElemento:cola) elemento = 
    min elemento siguienteElemento : cambiarHasta cola (max elemento siguienteElemento)