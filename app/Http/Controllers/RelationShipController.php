<?php

namespace App\Http\Controllers;

use App\Models\Car1;
use App\Models\Mechanic1;
use App\Models\Owner1;
use App\Models\Post1;
use App\Models\Post2;
use App\Models\Tag2;
use App\Models\User1;
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

    public function ManyToManyBelong()
    {
        $moduleName = 'Many To Many Belongs To RelationShip';
        $user = User1::find(1);
        $data = $user->roles;
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
        $moduleName = 'One To One RelationShip (Polymorphic)';
        $post = Post1::find(1);
        $data = $post->image();
        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    // One To Many RelationShip
    public function OneToManyP()
    {
        $moduleName = 'One To Many RelationShip (Polymorphic)';
        $user = User1::find(1);
        $data = $user->image;
        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    // Many To Many RelationShip
    public function ManyToManyP()
    {
        $moduleName = 'Many To Many RelationShip (Polymorphic)';

        $post = Post2::find(1);

        $data = $post->tags;
        return view("$this->view/detail", compact('moduleName', 'data'));
    }

    // Relationship Methods Vs. Dynamic Properties
    public function  DynamicProperties(){
        $moduleName = 'One To Many RelationShip';

        $mechanic = Mechanic1::find(1);
        foreach($mechanic->CarMany as $item){
            echo "<h1>$item->name</h1>";
        }
    }

    // Relationship Existence
    public function RelationshipExistence(){
        $car1 = Car1::has('CarOne')->get();
        // $car2 = Car1::has('CarOne', '<=' ,4)->get();
        // $car3 = Car1::has('CarOne.name')->get();
        echo "<h1>$car1</h1>";
        // echo "<h1>$car2</h1>";
        // echo "<h1>$car3</h1>";
    }
}
