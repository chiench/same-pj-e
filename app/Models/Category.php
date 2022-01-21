<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $table = 'categories';
    protected $fillable =
    [



        'name',
        'slug'
    ];


    public function countPro()
    {

        return $this->hasMany(Product::class,'category_id','id');
    }

    public function subcat()
    {

        return $this->hasMany(Subcategory::class,'category_id','id');
    }



    public function scopeSearch($query)
    {
        if ($key=request()->key){
            $query = $query->where('name', 'like', '%'.$key.'%');
        }
        return $query;
    }
}
