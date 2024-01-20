<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bookstory extends Model
{
    use HasFactory;
    public $timestamps = true; //Set time to false
    protected $fillable = [
        'title', 'seo_title', 'excerpt', 'body', 'media', 'slug', 'meta_description', 'meta_keywords', 'status', 'featured', 'category_id'
    ];
    protected $primarykey = 'id';
    protected $table = 'bookstory';

    public function category() {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

    public function chapter() {
        return $this->hasMany(Chapter::class, 'chapter_id', 'id');
    }

    public function pivote_bookstory_category() {
        return $this->belongsToMany(Category::class, 'pivote_bookstory_category', 'bookstory_id', 'category_id')->where('status', 'ACTIVE');
    }
}
