<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Gloudemans\Shoppingcart\Facades\Cart;

class Wishlistmain extends Component
{
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
    public function movetocart($rowId)
    {

        $item = Cart::instance('wishlist')->get($rowId);

        Cart::instance('wishlist')->remove($rowId);
        Cart::instance('cart')->add($item->id, $item->name,1, $item->price)->associate('App\Models\Product');
        $this->emitTo('cart-refesh', 'refreshCart');


    }
    public function render()
    {
        return view('livewire.wishlistmain')->layout('layout.app');
    }
}
