<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pivote_Bookstory_Category extends Model
{
    use HasFactory;
    public $timestamps = false; //Set time to false
    protected $fillable = [
        'bookstory_id', 'category_id'
    ];
    protected $primarykey = 'id';
    protected $table = 'pivote_bookstory_category';
}
