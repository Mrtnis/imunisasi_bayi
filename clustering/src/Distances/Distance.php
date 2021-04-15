<?php

namespace HierarchicalClustering\Distances;


interface Distance{

    public function calculate(array $a, array $b);

}