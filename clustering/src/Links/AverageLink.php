<?php

namespace HierarchicalClustering\Links;

class AverageLink implements Link{

    public function calculate(array $distances){
        $sum = array_sum($distances);
        return $sum / count($distances);
    }

}