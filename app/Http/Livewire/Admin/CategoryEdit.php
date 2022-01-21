<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Subcategory;
use Livewire\Component;
use Illuminate\Support\Str;

class CategoryEdit extends Component
{
    public $name;
    public $slug;
    public $category_id;
    public $category_slug;



    public function mount($category_slug)
    {

            $this->category_slug = $category_slug;
            $category = Category::where('slug',$category_slug)->first();
            $this->category_id = $category->id;
            $this->name = $category->name;
            $this->slug = $category->slug;




    }




    public function rederSlug()
    {

        $this->slug = Str::slug($this->name);
    }

    public function updateCat()
    {


            $category = Category::find($this->category_id);
            $category->name = $this->name;
            $category->slug = $this->slug;

            $category->save();
            session()->flash('success','Cập nhật thành công mới thành công');
            return redirect()->route('admin_category');






    }

    public function render()
    {
        $cat = Category::all();


        return view('livewire.admin.category-edit',compact('cat'))->layout('layout.app');
    }
}
