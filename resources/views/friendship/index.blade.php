@extends('layouts.list')

@section('content')

<div class="container">

    @if (\Session::has('success'))
        <div class="alert alert-success">
            <p>{{ \Session::get('success') }}</p>
        </div><br />
    @endif

    {{-- vapulus
    millionmakers --}}


<section class="our-webcoderskull padding-lg">
  <div class="container">
    <ul class="row">
      @foreach($friendships as $friendshipKey => $friendshipValue)
      <li class="col-12 col-md-6 col-lg-3">
          <div class="cnt-block equal-hight" style="height: 350px;">
            <figure><img src="{{ $friendshipValue->image }}" class="img-responsive" alt="" style="object-fit:cover;width:100%"></figure>
            <h3><a href="{{action('UserProfileController@show', $friendshipValue->id_friend)}}">
                        {{$friendshipValue->name}}
                        {{$friendshipValue->surname}}
                    </a></h3>
            <p>{{date('d/m/Y', strtotime($friendshipValue->date_from)) }}</p>
          </div>
      </li>
       @endforeach
      
    </ul>
  </div>
</section>
</div>
@endsection