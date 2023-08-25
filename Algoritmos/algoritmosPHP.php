<?php
function busquedaLineal($elemento, $array) {
    foreach ($array as $valor) {
        if ($valor == $elemento) {
            return true;
        }
    }
    return false;
}

function ordenamientoBurbuja($array)
{
    $arraySize = count($array);
    for ($i = 0; $i < $arraySize - 1; $i++) {
        for ($j = 0; $j < $arraySize - $i - 1; $j++) {
            if ($array[$j] > $array[$j + 1]) {
                $temp = $array[$j];
                $array[$j] = $array[$j + 1];
                $array[$j + 1] = $temp;
            }
        }
    }
    return $array;
}
?>