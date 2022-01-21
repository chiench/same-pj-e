<?php

namespace App\Http\Livewire\User;

use Livewire\Component;

class UserProfileEdit extends Component
{
    public function render()
    {
        return view('livewire.user.user-profile-edit')->layout('layout.app');
    }
}
