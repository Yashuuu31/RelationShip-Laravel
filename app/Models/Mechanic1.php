<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mechanic1 extends Model
{
    use HasFactory;

    protected $table = 'mechanics1';

    public function carOwnerOne()
    {
        return $this->hasOneThrough(Owner1::class, Car1::class,
                                    'mechanic_id', 'car_id',
                                'id', 'id');
    }

    public function carOwnerMany()
    {
        return $this->hasManyThrough(Owner1::class, Car1::class,
                                    'mechanic_id', 'car_id',
                                'id', 'id');
    }

    public function CarOne(){
        return $this->hasOne(Car1::class, 'mechanic_id', 'id');
    }

    public function CarMany(){
        return $this->hasMany(Car1::class, 'mechanic_id', 'id');
    }
}
