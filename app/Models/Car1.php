<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Car1 extends Model
{
    use HasFactory;

    protected $table = 'cars1';


    public function CarOne()
    {
        return $this->belongsTo(Car1::class, 'mechanic_id');
    }
}
