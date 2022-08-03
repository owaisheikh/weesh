@extends('layouts.list')

@section('content')
<section class="profile">
      <div class="new">
        <div class="profile-content">
    <h2>@lang("Edit an Object in list:")
        <a href="{{action('WListController@show', $list_row->id_list)}}"><b>{{ $list_row->wlist->name }}</b></a>
    </h2>
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

    {!! Form::model($list_row, array('method' => 'put',
        'route' => array('wlists.list_rows.update', $list_row->id_list, $list_row->id_list_row), 'class' => 'form')) !!}

        {{csrf_field()}}
        <input name="_method" type="hidden" value="PATCH">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="object">@lang("Name"):</label>
                <input type="text" class="form-input" name="object" value="{{$list_row->object}}">
            </div>
        </div>

        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="link_web">@lang("Link"):</label>
                <input type="text" class="form-input" name="link_web" value="{{$list_row->link_web}}">
            </div>
        </div>


        <?php $listPrivacies = \Weeesh\ListPrivacy::pluck('name', 'id_list_privacy')->toArray() ?>

        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="name">@lang("Privacy"):</label>
                {!! Form::select('id_list_privacy',
                    $listPrivacies, $list_row->id_list_privacy, ['class' => 'form-input']) !!}
            </div>
        </div>

        <div class="form-group">
          <input type="submit" name="submit" id="submit" class="form-submit" value=@lang("Update Object")/>
        </div>
          
    </form>
</div>
</div>
</section>

@endsection