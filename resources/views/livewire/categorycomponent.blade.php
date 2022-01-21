
		<main id="main" class="main-site left-sidebar">

			<div class="container">

				<div class="wrap-breadcrumb">
					<ul>
						<li class="item-link"><a href="#" class="link">home</a></li>
						<li class="item-link"><span>Digital & Electronics</span></li>
                        <li class="item-link"><span>{{$category_name}}</span></li>
					</ul>
				</div>
				<div class="row">

					<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 main-content-area">

						<div class="banner-shop">
							<a href="#" class="banner-link">
								<figure><img src="{{url('file')}}/images/tool-banner.jpg" alt=""></figure>
							</a>
						</div>

						<div class="wrap-shop-control">

							<h1 class="shop-title">Digital & Electronics</h1>

							<div class="wrap-right">

								<div class="sort-item orderby ">
									<select name="orderby" class="use-chosen" wire:model='sorting' >
										<option value="default" selected="selected">Default sorting</option>
										<option value="date">Sort by newness</option>
										<option value="price">Sort by price: low to high</option>
										<option value="price-desc">Sort by price: high to low</option>
									</select>
								</div>

								<div class="sort-item product-per-page">
									<select name="post-per-page" class="use-chosen" wire:model='pagesize'>
										<option value="12" selected="selected">12 per page</option>
										<option value="16">16 per page</option>
										<option value="18">18 per page</option>
										<option value="21">21 per page</option>
										<option value="24">24 per page</option>
										<option value="30">30 per page</option>
										<option value="32">32 per page</option>
									</select>
								</div>

								<div class="change-display-mode">
									<a href="#" class="grid-mode display-mode active"><i class="fa fa-th"></i>Grid</a>
									<a href="list.html" class="list-mode display-mode"><i class="fa fa-th-list"></i>List</a>
								</div>

							</div>

						</div><!--end wrap shop control-->

						<div class="row">

							<ul class="product-list grid-products equal-container">

								@foreach ($data as $item)
						<li class="col-lg-4 col-md-6 col-sm-6 col-xs-6 ">
							<div class="product product-style-3 equal-elem ">
								<div class="product-thumnail">
									<a href="{{route('product_details',['slug'=>$item->slug])}}" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
										<figure><img src="/file/images/products/{{$item->image}}" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
									</a>
								</div>
								<div class="product-info">
									<a href="{{route('product_details',['slug'=>$item->slug])}}" class="product-name"><span>{{$item->name}}</span></a>
									<div class="wrap-price"><span class="product-price">${{$item->regular_price}}</span></div>
									<a href="#" class="btn add-to-cart" wire:click.prevent="store({{$item->id}},'{{$item->name}}', {{$item->regular_price}})">Add To Cart</a>
								</div>
							</div>
						</li>
						@endforeach

							</ul>

						</div>

						<div class="wrap-pagination-info">
							<p style="margin-top: 15px" class="result-count">Showing 1-{{$pagesize}} of {{$count1}} result</p>
							{{$data->links()}}

						</div>
					</div><!--end main products area-->

					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 sitebar">
						<div class="widget mercado-widget categories-widget">
							<h2 class="widget-title">All Categories</h2>
							<div class="widget-content">
								<ul class="list-category">
									@foreach ($listCar as $item)
									<li class="category-item has-child-cate">
										<div>
											<a href="{{route('product_category',['category_slug'=>$item->slug])}}" class="cate-link">{{$item->name}}</a>
											<span >({{$item->countPro()->count()}})</span>
										</div>


									</li>
									@endforeach


								</ul>
							</div>
						</div><!-- Categories widget-->

						<div class="widget mercado-widget filter-widget brand-widget">

						</div><!-- brand widget-->

						<div class="widget mercado-widget filter-widget price-filter">

                            <h2 class="widget-title">Price {{$min}} -{{$max}} </h2>
							<div class="widget-content">
								<div id="slider">

                                    <input style="width: 40%;margin-bottom: 5px; text-align: center" type="number" class="form-control"  wire:model='min'   />
                                    <label style="margin-left: 41px;" for="">to</label>
                                    <input style="width: 40%;margin-top: 5px;text-align: center" type="number" class="form-control"  wire:model='max'   />


                                </div>
						</div><!-- Price-->



						<div class="widget mercado-widget widget-product">
							<h2 class="widget-title">Popular Products</h2>
							<div class="widget-content">
								<ul class="products">
									@foreach ($popular as $item)
									<li class="product-item">
										<div class="product product-widget-style">
											<div class="thumbnnail">
												<a href="deta{{route('product_details',['slug'=>$item->slug])}}" title="">
													<figure><img src="{{url('file')}}/images/products/{{$item->image}}" alt=""></figure>
												</a>
											</div>
											<div class="product-info">
												<a href="{{route('product_details',['slug'=>$item->slug])}}" class="product-name"><span>{{$item->name}}</span></a>
												<div class="wrap-price"><span class="product-price">${{$item->regular_price}}</span></div>
											</div>
										</div>
									</li>
                                    @endforeach
								</ul>
							</div>
						</div><!-- brand widget-->

					</div><!--end sitebar-->

				</div><!--end row-->

			</div><!--end container-->

		</main>
		<!--main area--







	</div>








   </main>
</div>
