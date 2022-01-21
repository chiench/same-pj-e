<?php

namespace App\Http\Livewire\User;

use App\Models\Product;
use App\Models\Proflie;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class UserProfile extends Component
{
    public function render()
    {

        $user = User::find(Auth::user()->id);
        return view('livewire.user.user-profile',compact('user'))->layout('layout.app');
    }
}
