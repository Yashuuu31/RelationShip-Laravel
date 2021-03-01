<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Owner extends Model
{
    use HasFactory;
    protected $table = 'owners';

    public function CarOne(){
        return $this->hasOne(Car::class, 'owner_id', 'id');
    }

    public function CarMany(){
        return $this->hasMany(Car::class, 'owner_id', 'id');
    }

    public function CarOneBelong()
    {
        return $this->belongsTo(Car::class, 'id', 'owner_id');
    }

    
}
