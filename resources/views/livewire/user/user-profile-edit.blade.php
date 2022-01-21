<div>
    <div class="container" style="padding: 30px 0 ;">

      <div class="row">


        <div class="col-md-12">
            @if (Session::has('delete'))
            <div class="alert alert-success" role="alert">
                {{ Session::get('delete') }}
            </div>


        @endif
            <div class="card" style="padding: 5px 0;font-size:large " >
                <b > Update Your Infor</b>
                <div style="margin: 10px 0; display:flex; justify-content: flex-end;" class="search">

                    <a href="{{route('UserProfile')}}" class="btn btn-success">Your Infor</a>

                </div>
                <form   >
                  @csrf
                  <div class="form-group">
                    <label for="">Name </label>
                    <input style="height: 40px" type="text" value class="form-control" name="name" id="name"  placeholder="..." >

                  </div>
                  <div class="form-group">
                    <label for="">Image</label>
                    <input style="height: 40px" wire:model='Image' type="file" value="" class="file-input">



                  </div>

                  <div class="form-group">
                    <label for="">Phone</label>
                    <input style="height: 40px" type="text" value class="form-control" name="slug" id="slug"  placeholder="..." >

                  </div>
                  <div class="form-group">
                    <label for="">Line 1</label>
                    <input style="height: 40px" type="text" value class="form-control" name="slug" id="slug"  placeholder="..." >

                  </div>
                  <div class="form-group">
                    <label for="">City</label>
                    <input style="height: 40px" type="text" value class="form-control" name="slug" id="slug"  placeholder="..." >

                  </div>
                  <div class="form-group">
                    <label for="">Country</label>
                    <input style="height: 40px" type="text" value class="form-control" name="slug" id="slug"  placeholder="..." >

                  </div>
                  <div class="form-group">
                    <label for="">Zip code</label>
                    <input style="height: 40px" type="text" value class="form-control" name="slug" id="slug"  placeholder="..." >

                  </div>
                  <button type="submit" class="btn btn-primary"> Update </button>
              </form>
            </div>
        </div>
    </div>
    </div>

</div>
