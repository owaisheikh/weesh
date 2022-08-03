@extends('layouts.list')

@section('content')
<section class="signup">
      <div class="new">
    <div class="signup-content">

    <h2>@lang("Edit A List")</h2><br/>
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
  


  <!-- <img src="images/signup-bg.jpg" alt=""> -->

       <form method="post" action="{{action('WListController@update', $id_list)}}">
        {{csrf_field()}}
        <input name="_method" type="hidden" value="PATCH">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="name">@lang("Name"):</label>
                <input type="text" class="form-input" name="name" value="{{$wlist->name}}">
            </div>
        </div>

        <?php $listPrivacies = \Weeesh\ListPrivacy::pluck('name', 'id_list_privacy')->toArray() ?>

        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="name">@lang("Privacy"):</label>
                {!! Form::select('id_list_privacy',
                    $listPrivacies, $wlist->id_list_privacy, ['class' => 'form-input']) !!}
            </div>
        </div>

        
             <div class="form-group">
          <input type="submit" name="submit" id="submit" class="form-submit" value=@lang("Update List")/>
        </div>
        
    </form>
    
  </div>
</div>
</section>
@endsection