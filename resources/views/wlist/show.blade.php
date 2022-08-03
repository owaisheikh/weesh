  @extends('layouts.list')
@section('content')
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
    <h1 style="text-transform: uppercase"> {{ $wlist->name }}</h1>
    <p>
        @lang("Created on"): {{ date('F d, Y', strtotime($wlist->created_at)) }} <br />
        @lang("Last modified"): {{ date('F d, Y', strtotime($wlist->updated_at)) }}<br />
    </p>
    <h2>@lang("Objects")</h2>
    
    @if($wlist->list_rows->count() == 0)
    <p>
        @lang("Not yet object for this list.")
        <a href="{{ URL::route('wlists.list_rows.create', $wlist->id_list) }}">@lang("Add an object")</a>.
    </p>
    @else
    <div class="table-responsive">
        <table class="table">
    
            <tr>
                
                

                <td >
                      <div>
        @foreach ($wlist->list_rows as $list_row)
    <div class="col-sm-6 tabs-1">
                    @if($list_row->isBooked())
                    <?php //TODO: verificare x gli oggetti gia prenotati le azioni da intraprendere?>
                    {{ $list_row->object }}
                    @else
                    
                        <ul>
                            <li class="img-show">
                                <img src="{{asset($list_row->avatar)}}"style=" width: 120px;height: 120px; float: left ;object-fit:contain"  >
                                <h2 class="title-pro">{{ $list_row->object }}</h2>
                                
                            </li>

                        </ul>
                    
                    
                    @endif
                      <?php
                    /**
                    *
                    * TODO: se l'oggetto è stato prenotato, non posso cancellare
                    * x cancellare: mando una mail a chi ha prenotato,chiedendo se faccio ancora
                    * in tempo a cancellare
                    * x modificare: mando una mail a chi ha prenotato,chiedendo se faccio ancora
                    * in tempo a modificare
                    *
                    * resto in attesa di risposta
                    */
                    ?>
                    @if($list_row->isBooked())
                    @lang("Already Booked")
                    @else
                    <form action="{{ URL::route('wlists.list_rows.destroy', [$wlist->id_list, $list_row->id_list_row]) }}" method="post">
                        {{csrf_field()}}
                        <input name="_method" type="hidden" value="DELETE">
                        <button class="btn btn-danger btn-blue" type="submit" style="margin-left: 320px;">@lang("Delete")</button>

                    </form>
                    @endif
                    <br>
                    <a href="{{ URL::route('wlists.list_rows.edit',  [$wlist->id_list, $list_row->id_list_row]) }}">
                        
                        <button class="btn btn-primary btn-blue" type="submit" style="margin-left: 320px;">&nbsp&nbsp Edit &nbsp&nbsp</button>
                    </a>
                </div>
             @endforeach
                </div>
                </td>
                
                
                <!--
                <td>
                    <a href="{{ URL::route('wlists.list_rows.edit',  [$wlist->id_list, $list_row->id_list_row]) }}">@lang("Edit")</a>
                </td>
                -->

            </tr>

        </table>
    </div>
    @endif
</div>
<br>
&nbsp
&nbsp
<p style="text-align: center;">
    <a href="{{ URL::route('wlists.list_rows.create', $wlist->id_list) }}" class='btn btn-primary'>@lang("Add an object")</a>
</p>
@endsection