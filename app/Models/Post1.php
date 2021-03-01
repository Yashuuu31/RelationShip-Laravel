<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post1 extends Model
{
    use HasFactory;

    protected $table = 'posts1';
    protected $guarded = [];
    public $timestamps = false;

    public function image()
    {
        return $this->morphOne(Image1::class, 'imageable');
    }


}
