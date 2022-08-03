@extends('layouts.list')
@section('content')
<!-- create.blade.php -->
<!-- https://appdividend.com/2017/08/20/laravel-5-5-tutorial-example/#Step_3_Create_a_model_as_well_as_migration_file_for_our_Products_table -->
<div class="container">
  
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
</div>
<section class="signup create_page">
  <!-- <img src="images/signup-bg.jpg" alt=""> -->
  <div class="new">
    <div class="signup-content">
      <form method="post" action="{{url('wlists')}}" enctype="multipart/form-data">
        {{csrf_field()}}
        <h2 class="form-title">@lang("Create A List")</h2>
        <div class="row">
          <div class="col-md-4"></div>
          <div class="form-group col-md-4">
            <label for="name">@lang("Name"):</label>
            <input type="text" class="form-input" name="name" value="{{old('name')}}">
          </div>
        </div>
        <div class="row">
          <div class="col-md-4"></div>
          <div class="form-group col-md-4">
            <label for="date_valide_to">@lang("Valide to"):</label>
            <input type="date" class="form-input" name="date_valide_to"
            value="{{old('date_valide_to')}}">
          </div>
        </div>
        <div class="row">
          <div class="col-md-4"></div>
          <div class="form-group col-md-4">
            <label for="image">@lang("Image"):</label>
            <input type="file" class="form-input" name="image" value="{{old('image')}}">
          </div>
        </div>
        <?php $listPrivacies = \Weeesh\ListPrivacy::pluck('name', 'id_list_privacy')->toArray() ?>
        <div class="row">
          <div class="col-md-4"></div>
          <div class="form-group col-md-4">
            <label for="name">@lang("Visibility"):</label>
            {!! Form::select('id_list_privacy', $listPrivacies, null, ['class' => 'form-input']) !!}
          </div>
        </div>
        <div class="form-group">
          <input type="submit" name="submit" id="submit" class="form-submit" value=@lang("Insert List")/>
        </div>
      </div>
    </form>
    
  </div>
</div>
</section>
@endsection