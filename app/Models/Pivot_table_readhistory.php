<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pivot_table_readhistory extends Model
{
    use HasFactory;
    public $timestamps = true; //Set time to false
    protected $fillable = [
        'publisher_id', 'bookstory_id', 'chapter_id'
    ];
    protected $primarykey = 'id';
    protected $table = 'pivot_table_readhistory';
}
