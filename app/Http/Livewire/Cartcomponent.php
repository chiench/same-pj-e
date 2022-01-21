<?php

namespace App\Http\Livewire;

use Livewire\Component;

use Gloudemans\Shoppingcart\Facades\Cart;
use Gloudemans\Shoppingcart\CartItem;
use Gloudemans\Shoppingcart\CartItemOptions;
use App\Models\discount;
use Illuminate\Support\Facades\Auth;

class Cartcomponent extends Component
{

    public $havecode;
    public $cuponCode;
    public $discount;
    public $subAfter;
    public $taxAfter;
    public $totalAfter;



    public function upqty($rowId)
    {

        $get = Cart::instance('cart')->get($rowId);
        $qty = $get->qty + 1;
        Cart::update($rowId, $qty);
        $this->emitTo('cart-refesh', 'refreshCart');
    }

    public function downqty($rowId)
    {

        $get = Cart::instance('cart')->get($rowId);
        $qty = $get->qty - 1;
        Cart::update($rowId, $qty);
        $this->emitTo('cart-refesh', 'refreshCart');
    }

    public function deleteOne($rowId)
    {

        Cart::instance('cart')->remove($rowId);
        Session()->flash('success', 'Delete complete');
        $this->emitTo('cart-refesh', 'refreshCart');
    }

    public function deleteAll()
    {

        Cart::instance('cart')->destroy();
    }

    public function apply()
    {

        $codeApp = discount::where('code', $this->cuponCode)->where('cart_value', '<=', Cart::instance('cart')->subtotal())->first();
        if (!$codeApp) {

            session()->flash('false', 'Code does not exist');
            return;
        } else {
            session()->put(
                'coupon',
                [
                    'code' => $codeApp->code,
                    'type' => $codeApp->type,
                    'value' => $codeApp->value,
                    'cart_value' => $codeApp->cart_value,
                ]
            );
        }
    }


    public function removeCoupon()
    {
        session()->forget('coupon');
    }


    public function caculatorDiscount()
    {


        if (session()->has('coupon')) {
            if (session()->get('coupon')['type'] == 'fixed') {
                $this->discount = session()->get('coupon')['value'];
            } else {
                $this->discount = (Cart::instance('cart')->subtotal() * session()->get('coupon')['value']) / 100;
            }
            $this->subAfter = Cart::instance('cart')->subtotal() - $this->discount;
            $this->taxAfter = ($this->subAfter * config('cart.tax')) / 100;
            $this->totalAfter = $this->subAfter + $this->taxAfter;
        }
    }


    public function checkout()
    {

        if(Auth::check())
        {
            return redirect()->route('checkout');

        }
        else
        {
            return redirect()->route('login');
        }
    }

    public function setAmountForCheckOut()
    {

        if(!Cart::count() > 0)
        {
            session()->forget('checkout');
            return;
        }

        if (session()->has('coupon')) {

            session()->put(
                'checkout',
                [
                    'discount' => $this->discount,
                    'subtotal' => $this->subAfter,
                    'tax' => $this->taxAfter,
                    'total' => $this->totalAfter,
                ]
            );
        } else {
            session()->put(
                'checkout',
                [
                    'discount' => 0,
                    'subtotal' => Cart::instance('cart')->subtotal(),
                    'tax' =>  Cart::instance('cart')->tax(),
                    'total' => Cart::instance('cart')->total(),

                ]
            );
        }
    }


    public function render()
    {


        $dataCart =Cart::instance('cart')->content();

        if (session()->has('coupon')) {
            if (Cart::instance('cart')->subtotal() < session()->get('coupon')['cart_value']) {
                session()->forget('coupon');
            } else {
                $this->caculatorDiscount();
            }
        }


        $this->setAmountForCheckOut();

        return view('livewire.cartcomponent', compact('dataCart'))->layout('layout.app');
    }
}
