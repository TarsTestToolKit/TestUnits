<?php

namespace PhpTars\impl;

use PhpTars\servant\TestUnits\PhpTars\testObj\testServant;

class test implements testServant
{
    public function ping($req)
    {
        return $req;
    }
}
