<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Product;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;
use Illuminate\Support\Carbon;

class ProductEdit extends Component
{
    use WithFileUploads;
    public $name;
    public $slug;
    public $shortDescription;
    public $Description;
    public $List_image;
    public $Image;
    public $Quantity;
    public $Regular_price;
    public $Sale_price;
    public $Category_id;
    public $featured;

    public $newimage;
    public $product_id;

    public function mount($product_slug)
    {
        $product = Product::where('slug',$product_slug)->first();
        $this->name=$product->name;
        $this->slug=$product->slug;
        $this->shortDescription=$product->short_description;
        $this->Description=$product->description;
        $this->List_image=$product->list_image;
        $this->image=$product->image;
        $this->Quantity=$product->quatity;
        $this->Regular_price=$product->regular_price;
        $this->Sale_price=$product->sale_price;
        $this->Category_id=$product->category_id;
        $this->featured=$product->featured;
        $this->newimage= $product->newimage;
        $this->product_id= $product->id;
    }

    public function genSlug()
    {
        $this->slug = Str::slug($this->name,'-');
    }
    public function updatePro()
    {

        $product = Product::find($this->product_id);
        $product->name = $this->name;
        $product->slug = $this->slug;

        $product->short_description = $this->shortDescription;
        $product->description = $this->Description;
        $product->sale_price = $this->name;
        $product->quatity = $this->Quantity;
        $product->regular_price = $this->Regular_price;
        $product->sale_price = $this->Sale_price;
        $product->category_id = $this->Category_id;
        if($this->newimage)
        {
            $Imagename = Carbon::now()->timestamp. '.' . $this->image->extension();
        $this->image->storeAs('products',$Imagename);
        $product->image = $Imagename;
        }

        $product->featured = $this->featured;
        $product->save();
        session()->flash('success','Cập nhật Product mới thành công');
        return redirect()->route('admin_product');

    }
    public function render()
    {
        $subcat = Category::all();
        return view('livewire.admin.product-edit',compact('subcat'))->layout('layout.app');
    }
}
