<?php

namespace App\Http\Livewire\Admin;

use App\Models\Order as ModelsOrder;
use App\Models\OrderItem;
use Livewire\Component;


class Order extends Component
{

    public function dele($id)
    {
        $product = ModelsOrder::find($id);
        $product->delete();
        session()->flash('success','Xóa thành công');
    }
    public function render()
    {


        $od = ModelsOrder::all();

        return view('livewire.admin.order',compact('od'))->layout('layout.app');
    }
}
