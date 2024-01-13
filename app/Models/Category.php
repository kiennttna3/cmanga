<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    public $timestamps = true; //Set time to false
    protected $fillable = [
        'title', 'seo_title', 'excerpt', 'body', 'image', 'slug', 'meta_description', 'meta_keywords', 'status', 'featured'
    ];
    protected $primarykey = 'id';
    protected $table = 'category';

    public function bookstory() {
        return $this->belongsTo(Bookstory::class);
    }
}
