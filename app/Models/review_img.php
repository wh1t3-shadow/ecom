<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class review_img extends Model
{
    use HasFactory;
    protected $table = 'review_img';
    protected $guarded = ['id'];
}
