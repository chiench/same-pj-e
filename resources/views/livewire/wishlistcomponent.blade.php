<div>

    <a href="{{route('product_wish')}}" class="link-direction">
        <i class="fa fa-heart" aria-hidden="true"></i>
        <div class="left-info">
            @if (Cart::instance('wishlist')->count()>0)
            <span class="index">{{Cart::instance('wishlist')->count()}} item</span>
            @endif

            <span class="title">Wishlist</span>
        </div>
    </a>
</div>
