<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Livewire\Component;

class Detailcomponent extends Component
{

    public $slug;


    public function mount($slug)
    {

        $this->slug = $slug;

    }

    public $qty = 1;



    public function upqty()
    {
        $this->qty = $this->qty + 1;
    }

    public function downqty()
    {
        $this->qty = $this->qty - 1;
    }


    public static function store($product_id, $product_name, $product_price)
    {

        Cart::add($product_id, $product_name,1, $product_price)->associate('App\Models\Product');
        session()->flash('success','Thêm mới một mục vào rỏ hàng');
        return redirect()->route('cart');

    }

    public function render()
    {


        $proDetails = Product::where('slug',$this->slug)->first();


        return view('livewire.detailcomponent',compact('proDetails'))->layout('layout.app');
    }
}
