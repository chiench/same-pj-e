<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table = 'products';
    protected $fillable =
    [
        'name',
        'slug',
        'short_description',
        'description',
        'regular_price',
        'sale_price',
        'featured',
        'quatity',
        'image',
        'list_image',
        'category_id'





    ];


    public function cas()
    {

        return $this->hasMany(Category::class,'id','category_id');
    }

    public function orderItem()
    {

        return $this->hasMany(OrderItem::class,'product_id');
    }
    public function subcategories()
    {

        return $this->belongsTo(Subcategory::class,'subcategory_id');
    }


        public function scopeSearch($query)
        {
            if ($key=request()->key){
                $query = $query->where('name', 'like', '%'.$key.'%');
            }
            return $query;
        }

}
