<?php

namespace App\Http\Controllers;

use App\Models\Car1;
use App\Models\Mechanic1;
use App\Models\Owner1;
use App\Models\Post1;
use Illuminate\Http\Request;
use PDO;

class RelationShipController extends Controller
{
    public $view = 'relation_ship';

    public function index()
    {
        return view("$this->view/index");
    }

    public function OneToOne()
    {
        $moduleName = 'One To One RelationShip';

        $mechanic = Mechanic1::find(1);
        $data = $mechanic->CarOne;

        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    public function OneToMany()
    {
        $moduleName = 'One To Many RelationShip';

        $mechanic = Mechanic1::find(1);
        $data = $mechanic->CarMany;

        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    public function OneToOneBelong()
    {
        $moduleName = 'One To Many Belongs To RelationShip';
        $car = Car1::find(1);
        $data = $car->CarOne;
        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    // Has One Through RelationShip
    public function HasOneThrough()
    {
        $moduleName = 'One To Through RelationShip';
        $mechanic = Mechanic1::find(1);
        $data = $mechanic->carOwnerOne;

        return view("$this->view/detail", compact('moduleName', 'data'));
    }


    // Has Many Through RelationShip
    public function HasManyThrough()
    {
        $moduleName = 'One To Through RelationShip';
        $mechanic = Mechanic1::find(1);
        $data = $mechanic->carOwnerMany;

        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    /** Polymorphic Relationships */
    // One To One RelationShip
    public function OneToOneP()
    {
        
    }
}
