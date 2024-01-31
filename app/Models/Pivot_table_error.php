<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pivot_table_error extends Model
{
    use HasFactory;
    public $timestamps = true; //Set time to false
    protected $fillable = [
        'bookstory_id', 'chapter_id', 'error_type', 'body'
    ];
    protected $primarykey = 'id';
    protected $table = 'pivot_table_error';
}
