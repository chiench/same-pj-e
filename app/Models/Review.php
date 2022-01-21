<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;
    protected $table = 'reviews';


    public function orderitem()
    {
        return $this->belongsTo(OrderItem::class);
    }



    public function scopeSearch($query)
    {
        if ($key=request()->key){
            $query = $query->where('name', 'like', '%'.$key.'%');
        }
        return $query;
    }


}
