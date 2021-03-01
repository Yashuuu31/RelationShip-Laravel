<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Video2 extends Model
{
    use HasFactory;

    protected $table = 'videos2';
    protected $guarded = [];
    public $timestamps = false;

    public function tags()
    {
        return $this->morphToMany(Tag2::class, 'taggable');
    }
}
