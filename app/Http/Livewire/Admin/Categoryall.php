<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Category;
use App\Models\Product;
use App\Models\Subcategory;

class Categoryall extends Component
{

    public function deletecat($id)
    {

        $cat = Category::find($id);
        $cat->delete();
        session()->flash('success','Xoa mới thành công');

    }
    public function deletesub($id)
    {
        $sc = Subcategory::find($id);
        $sc->delete();
        session()->flash('success','Xoa mới thành công');

    }
    public function render()
    {


        $data = Category::orderBy('id','ASC')->Search()->paginate(4);
        return view('livewire.admin.categoryall',['data'=> $data])->layout('layout.app');


    }
}
