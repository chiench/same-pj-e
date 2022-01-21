<main id="main" class="main-site left-sidebar">
    <style>
        .product-wish{
            position: absolute;
            top: 10%;
            left: 0;
            z-index: 99;
            right: 30px;
            text-align: right;
            padding-top: 0;

        }
        .product-wish .fa{
            color: #cbcbcb;
            font-size: 32px;
        }
        .product-wish .fa:hover{
            color: #ff7007;
        }
        .fill-heart{
            color: #ff7007 !important;
        }
        .listw{
            margin-bottom: 20px;
        }
    </style>
    <div class="container">

        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="#" class="link">home</a></li>
                <li class="item-link"><span>Wish List</span></li>
            </ul>
        </div>
        <div class="row">
            @if (Cart::instance('wishlist')->count()>0)
            <div class="listw">
                <ul style=" margin-bottom: 20px;" class="product-list grid-products equal-container">
                    @php
                        $wish = Cart::instance('wishlist')->content()->pluck('id')

                    @endphp
                    @foreach (Cart::instance('wishlist')->content() as $item)
                    <li style=" margin-bottom: 50px;" class="col-lg-4 col-md-6 col-sm-6 col-xs-6 ">
                        <div class="product product-style-3 equal-elem ">
                            <div class="product-thumnail">
                                <a href="{{route('product_details',['slug'=>$item->model->slug])}}" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                    <figure><img src="/file/images/products/{{$item->model->image}}" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
                                </a>
                            </div>
                            <div class="product-info">
                                <a href="{{route('product_details',['slug'=>$item->model->slug])}}" class="product-name"><span>{{$item->model->name}}</span></a>
                                <div class="wrap-price"><span class="product-price">${{$item->model->regular_price}}</span></div>
                                <a href="#" class="btn add-to-cart" wire:click.prevent="movetocart('{{$item->rowId}}')">Move To Cart</a>
                                <div class="product-wish">
                                    <a href="" wire:click.prevent="removeformwish({{$item->model->id}})"><i class="fa fa-heart fill-heart"></i></a>


                                </div>
                            </div>
                        </div>
                    </li>
                    @endforeach
                </ul>
                @else
                    <h2>No product Wishlist</h2>
                @endif

            </div>

