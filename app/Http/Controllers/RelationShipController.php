<?php

namespace App\Http\Controllers;

use App\Models\Car;
use App\Models\Owner;
use Illuminate\Http\Request;
use PDO;

class RelationShipController extends Controller
{   
    public $view = 'relation_ship';

    public function index(){
        return view("$this->view/index");
    }

    public function OneToOne(){
        $moduleName = 'One To One RelationShip';
        
        $owner = Owner::find(1);
        $data = $owner->CarOne;

        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    public function OneToMany(){
        $moduleName = 'One To Many RelationShip';
        
        $owner = Owner::find(1);
        $data = $owner->CarMany;

        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    public function OneToOneBelong(){
        $moduleName = 'One To Many Belongs To RelationShip';

        $owner = Owner::find(1);
        $data = $owner->CarOneBelong;

        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    public function OneToManyBelong(){
        $moduleName = 'One To Many Belongs To RelationShip';

        $owner = Owner::find(1);
        $data = $owner->CarManyBelong;

        return view("$this->view/detail", compact('moduleName', 'data'));
    }
    
}
