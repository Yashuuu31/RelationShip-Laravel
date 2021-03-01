<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image1 extends Model
{
    use HasFactory;

    protected $table = 'images1';
    protected $guarded = [];
    public $timestamps = false;

    public function imageable()
    {
        return $this->morphTo();
    }
}
