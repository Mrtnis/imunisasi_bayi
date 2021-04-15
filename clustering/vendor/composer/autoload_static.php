<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitfe3397794acbd570e3f22ffb66cfa845
{
    public static $prefixLengthsPsr4 = array (
        'H' => 
        array (
            'HierarchicalClustering\\Links\\' => 29,
            'HierarchicalClustering\\Distances\\' => 33,
            'HierarchicalClustering\\' => 23,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'HierarchicalClustering\\Links\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Links',
        ),
        'HierarchicalClustering\\Distances\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Distances',
        ),
        'HierarchicalClustering\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitfe3397794acbd570e3f22ffb66cfa845::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitfe3397794acbd570e3f22ffb66cfa845::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
