<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User1 extends Model
{
    use HasFactory;

    protected $table = 'users1';
    
    public function image()
    {
        return $this->morphMany(Image1::class, 'imageable');
    }


    public function roles()
    {
        return $this->belongsToMany(Role1::class, 'role1_user1', 'user1_id', 'role1_id');
    }
}
