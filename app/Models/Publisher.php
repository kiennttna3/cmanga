<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Publisher extends Model
{
    use HasFactory;
    public $timestamps = true; //Set time to false
    protected $fillable = [
        'name', 'email', 'avatar', 'password'
    ];
    protected $primarykey = 'id';
    protected $table = 'publisher';
}
