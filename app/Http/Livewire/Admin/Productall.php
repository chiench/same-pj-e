<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Product;

class Productall extends Component
{
    public function dele($id)
    {
        $product = Product::find($id);
        $product->delete();
        session()->flash('success','Thêm Product mới thành công');
    }
    public function render()
    {
        $data = Product::orderBy('id','ASC')->Search()->paginate(5);
        return view('livewire.admin.productall',compact('data'))->layout('layout.app');

    }
}
