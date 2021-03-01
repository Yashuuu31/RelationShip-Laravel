<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag2 extends Model
{
    use HasFactory;
    protected $table = 'tags2';
    public $timestamps = false;

        // public function posts()
        // {
        //     return $this->morphedByMany(Post2::class, 'taggable');
        // }

    public function videos()
    {
        return $this->morphedByMany(Video2::class, 'taggable');
    }
}
