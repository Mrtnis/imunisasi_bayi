<?php


namespace HierarchicalClustering\Links;

interface Link{

    public function calculate(array $distances);

}