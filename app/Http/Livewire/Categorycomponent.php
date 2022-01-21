<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Pagination\Paginator;
use App\Models\Category;
use App\Models\Subcategory;

class CategoryComponent extends Component
{

    public $sorting;
    public $pagesize;
    public $min = 1;
    public $max = 1000;
    public $category_slug;

    public $scategory_slug;


    public function mount($category_slug,$scategory_slug=null)
    {
        $this->sorting = 'default';
        $this->pagesize = 8;
        $this->$category_slug = $category_slug;
        $this->scategory_slug =$scategory_slug;
    }




    public static function store($product_id, $product_name, $product_price)
    {
        Cart::add($product_id, $product_name,1, $product_price)->associate('App\Models\Product');

        session()->flash('success','Thêm mới một mục vào rỏ hàng');
        return redirect()->route('cart');
    }



    public function render()
    {
        $category_id =null;
        $category_name = "";
        $filter = "";
        if($this->scategory_slug)
        {
            $scategory = Subcategory::where('slug',$this->scategory_slug)->first();
            $category_id = $scategory->id;
            $category_name = $scategory->name;
            $filter = "sub";
        }
        else
        {
            $category = Category::where('slug',$this->category_slug)->first();
            $category_id = $category->id;
            $category_name = $category->name;
            $filter = "";
        }

        $category = Category::where('slug',$this->category_slug)->first();
        $category_id = $category->id;
        $category_name = $category->name;

        if($this->sorting =="date")
        {

            $data = Product::whereBetween('regular_price',[$this->min, $this->max])->where($filter.'category_id',$category_id)->orderBy('created_at','DESC')->paginate($this->pagesize);
        }
        elseif($this->sorting =="price")
        {
            $data = Product::whereBetween('regular_price',[$this->min, $this->max])->where($filter.'category_id',$category_id)->orderBy('regular_price','ASC')->paginate($this->pagesize);
        }
        elseif($this->sorting =="price-desc")
        {
            $data = Product::whereBetween('regular_price',[$this->min, $this->max])->where($filter.'category_id',$category_id)->orderBy('regular_price','DESC')->paginate($this->pagesize);
        }
        else
        {
            $data = Product::whereBetween('regular_price',[$this->min, $this->max])->where($filter.'category_id',$category_id)->paginate($this->pagesize);
        }


        $count1 = Product::count();

        $listCar = Category::all();

        $popular = Product::paginate(5);


        return view('livewire.categorycomponent',compact(['data','count1','listCar','category_id','category_name','popular']))->layout('layout.app');
    }
}
