@extends('layouts.list')

@section('content')


    <section class="profile">
      <div class="new add_new_obj">
        <div class="profile-content">
        <h2>
        <a href="{{action('WListController@show', $wlist->id_list)}}"><b><h4>{{ $wlist->name }}</h4></b></a>
        @lang("Insert new Object in list:")</h2>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div><br />
        @endif
        @if (\Session::has('success'))
            <div class="alert alert-success">
                <p>{{ \Session::get('success') }}</p>
            </div><br />
        @endif

          <form method="post" action="{{route('wlists.list_rows.store', $wlist->id_list)}}" class="form" enctype="multipart/form-data">
            {{csrf_field()}}
        <div class="row">
              <div class="col-md-4"></div>
              <div class="form-group col-md-4">
                  <label for="name">@lang("Name"):</label>
                  <input type="text" class="form-input" name="object">
              </div>
          </div>

          <div class="row">
              <div class="col-md-4"></div>
              <div class="form-group col-md-4">
                  <label for="link_web">@lang("Link"):</label>
                  <input type="text" class="form-input" name="link_web">
              </div>
          </div>
          <div class="row">
          <div class="col-md-4"></div>
          <div class="form-group col-md-4">
            <label for="image">@lang("Image"):</label>
            <input type="file" class="form-input" name="avatar" value="{{old('image')}}">
          </div>
        </div>
          <?php $listPrivacies = \Weeesh\ListPrivacy::pluck('name', 'id_list_privacy')->toArray() ?>
          <div class="row">
              <div class="col-md-4"></div>
              <div class="form-group col-md-4">
                  <label for="name">@lang("Privacy"):</label>
                  {!! Form::select('id_list_privacy', $listPrivacies, null, ['class' => 'form-input']) !!}
              </div>
          </div>
        
        
          <div class="form-group">
          <input type="submit" name="submit" id="submit" class="form-submit" value=@lang("Insert Object")/>
        </div>
        <input type="hidden" name="id_list" value="{{$wlist->id_list}}"/>
        </form>
        
  </div>
</div>
    </section>
@endsection