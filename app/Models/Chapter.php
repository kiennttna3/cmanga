<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chapter extends Model
{
    use HasFactory;
    public $timestamps = true; //Set time to false
    protected $fillable = [
        'title', 'title_name', 'seo_title', 'excerpt', 'body', 'media', 'slug', 'meta_description', 'meta_keywords', 'status', 'featured', 'bookstory_id'
    ];
    protected $primarykey = 'id';
    protected $table = 'chapter';

    public function bookstory() {
        return $this->belongsTo(Bookstory::class);
    }
}
