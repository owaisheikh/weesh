@extends('layouts.list')

@section('content')

<section class="profile profile-obj">
    <div class="new">
        <div class="profile-content">
    
 
     <div class="profile_img">
       <img src="{{ asset($user->profileimage) }}" >
     </div>
    <h2 style="object-fit: contain">{{ $user->name }}'s Profile</h2>
                
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
        </div>
    </div>

        
            <form action="{{route('profile.store',['id' => $user->id ])}}" method="post" enctype="multipart/form-data" >
                {{csrf_field()}}
                <div class="form-group">

                    <label for="name" > User Name</label>

                    <input type="text"  name="name" class="form-input" value="{{$user->name}}">

                </div>

                <div class="form-group">

                    <label for="email" >Email</label>

                    <input type="email"  readonly name="email" class="form-input" value="{{$user->email}}">

                </div>

                <div class="form-group">

                    <label for="avatar" >Upload new avatar</label>

                    <input type="file"  name="avatar" class="form-input" >

                </div>
                   <div class="form-group">
          <input type="submit" name="submit" id="submit" class="form-submit" value="Update Profile">
        </div>

            </form>
        </div>
    </div>
    </div>
    </div>
    </section>
@stop