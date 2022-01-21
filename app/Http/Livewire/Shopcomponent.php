<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Pagination\Paginator;
use App\Models\Category;



class Shopcomponent extends Component
{

    public $sorting;
    public $pagesize;

    public $min = 1;
    public $max = 1000;


    public function mount()
    {
        $this->sorting = 'default';
        $this->pagesize = 8;



    }






    public static function store($product_id, $product_name, $product_price)
    {

        Cart::instance('cart')->add($product_id, $product_name,1, $product_price)->associate('App\Models\Product');

        session()->flash('success','Thêm mới một mục vào rỏ hàng');
        return redirect()->route('cart');

    }
    public static function addwish($product_id, $product_name, $product_price)
    {
        Cart::instance('wishlist')->add($product_id, $product_name,1, $product_price)->associate('App\Models\Product');

    }
    public function removeformwish($product_id)
    {
        foreach(Cart::instance('wishlist')->content() as $witem)
        {
            if($witem->id ==$product_id)
            {
                Cart::instance('wishlist')->remove($witem->rowId);
                $this->emitTo('wishlistcomponent', 'refreshCart');
                return;
            }
        }
    }



    public function render()
    {


        if($this->sorting =="date")
        {

            $data = Product::whereBetween('regular_price',[$this->min, $this->max])->orderBy('created_at','DESC')->paginate($this->pagesize);
        }
        elseif($this->sorting =="price")
        {
            $data = Product::whereBetween('regular_price',[$this->min, $this->max])->orderBy('regular_price','ASC')->paginate($this->pagesize);
        }
        elseif($this->sorting =="price-desc")
        {
            $data = Product::whereBetween('regular_price',[$this->min, $this->max])->orderBy('regular_price','DESC')->paginate($this->pagesize);
        }
        else
        {
            $data = Product::whereBetween('regular_price',[$this->min, $this->max])->paginate($this->pagesize);
        }


        $count1 = Product::count();

        $listCar = Category::all();

        $popular = Product::paginate(5);


        return view('livewire.shopcomponent',compact(['data','count1','listCar','popular']))->layout('layout.app');
    }
}
