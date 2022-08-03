
<div id="app">
        <nav class="navbar navbar-default overflow">
            <div class="container">
                <div class="navbar-header">
                  
      <a class="navbar-brand" href="{{route('home')}}" style="font-family:'Poppins', sans-serif ;font-size: 25px">Weeesh</a>
    
                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#app-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    

                    {{ Form::open(['method'=>'GET','url'=>'user_profiles','class'=>'navbar-form navbar-left','role'=>'search'])  }}

                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" name="search" placeholder="Search...">
                        <span class="input-group-btn">
                            <button class="btn btn-default-sm" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                  

                        {{ Form::close() }}

                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">


                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- <li><a href="{{ url('/home') }}">@lang('Home')</a></li> -->

                        <!-- Authentication Links -->
                        @guest
                            <li><a href="{{ route('login') }}">@lang("Login")</a></li>
                            <li><a href="{{ route('register') }}">@lang("Register")</a></li>
                        @else
                                
                                <li><a href="{{ url('/friendships') }}" style="font-size: 18px;text-align-all: center">{{ __('My Friends') }}</a></li>

                            <li class="dropdown">
                                
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
                                    <img src="{{ asset(Auth::user()->profileimage) }}" style="width:30px; height: 30px; border-radius: 50%;">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                      <a href="{{route('user.profile')}}">profile</a>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>