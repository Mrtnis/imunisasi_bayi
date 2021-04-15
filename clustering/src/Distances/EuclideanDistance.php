<?php
namespace HierarchicalClustering\Distances;

class EuclideanDistance implements Distance{

    public function calculate(array $a, array $b){
        $d = 0;
        $count = count($a);
        for($i = 0; $i < $count; $i++){
            $d += pow($a[$i] - $b[$i], 2);
        }
        return sqrt($d);
    }

}