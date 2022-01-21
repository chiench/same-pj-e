<div>
    <style>
        nav svg{
            height: 20px;

        }
        nav .hidden{
            display: block !important;
        }
    </style>
    <div class="container" style="padding: 30px 0">
        <div class="row">


            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                       Your Information

                    </div>
                    <div class="panel-body">
                        <div class="col-md-4">
                            @if($user->name)
                            <img src="{{url('file')}}/images/author.jpg"  style="width: 80%;" alt="">
                            @else
                            <img src="{{url('file')}}/images/author.jpg" alt="">
                            @endif
                        </div>
                        <div class="col-md-8" style="font-size: 20px">
                            <p>Name : {{$user->name}}</p>
                            <p>Email : {{$user->email}}</p>
                            <p>Phone : {{$user->profile->phone}}</p>
                            <p>Line1 : {{$user->profile->line1}}</p>
                            <p>City : {{$user->profile->city}}</p>
                            <p>Country : {{$user->profile->country}}</p>
                            <p>Zipcode : {{$user->profile->zipcode}}</p>

                        </div>

                        <a href="{{route('UserProfileEdit')}}" style="margin-left: 10px" class="btn btn-primary"> Update Your Infor</a>


                    </div>
                </div>
            </div>




        </div>


    </div>
</div>
