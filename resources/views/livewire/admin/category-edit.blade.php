<div>
    <div class="container" style="padding: 30px 0 ;">

      <div class="row">


        <div class="col-md-12">
            @if (Session::has('success'))
            <div class="alert alert-success" role="alert">
                {{ Session::get('success') }}
            </div>


        @endif
            <div class="card" style="padding: 5px 0;font-size:large " >
                <b > Edit category</b>
                <div style="margin: 10px 0; display:flex; justify-content: flex-end;" class="search">

                    <a href="{{route('admin_category')}}" class="btn btn-success">All Category</a>

                </div>
                <form wire:submit.prevent='updateCat'  >
                  @csrf
                  <div class="form-group">
                    <label for="">Name Category</label>
                    <input style="height: 40px" type="text" value="" wire:model='name' class="form-control" name="name" id="name" wire:keyup='rederSlug'  placeholder="Name..." >
                    @error('name')
                    <small class="text-danger">{{$message}}</small>
                    @enderror
                  </div>

                  <div class="form-group">
                    <label for="">Slug</label>
                    <input style="height: 40px" type="text" value="" wire:model='slug' class="form-control" name="slug" id="slug"  placeholder="slug..." >
                    @error('slug')
                    <small class="text-danger">{{$message}}</small>
                    @enderror
                  </div>




                    </div>

                  <button type="submit" class="btn btn-primary"> Create </button>
              </form>
            </div>
        </div>
    </div>
    </div>

</div>
