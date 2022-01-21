<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Wishlistcomponent extends Component
{
    protected $listeners = ['refreshCart'=>'$refresh'];
    public function render()
    {
        return view('livewire.wishlistcomponent');
    }
}
