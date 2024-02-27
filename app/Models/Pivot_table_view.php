<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pivot_table_view extends Model
{
    use HasFactory;
    public $timestamps = true; //Set time to false
    protected $fillable = [
        'bookstory_id', 'view'
    ];
    protected $primarykey = 'id';
    protected $table = 'pivot_table_view';
}
