@extends('layouts.formLayout')

@section('content')

    <div class="flex-center position-ref full-height">
        <div class="main">

            <section class="signup">
                <!-- <img src="images/signup-bg.jpg" alt=""> -->
                <div class="container">
                    <div class="signup-content">
                        <form method="POST" action="{{ route('register') }}" id="signup-form" class="signup-form" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <h2 class="form-title">Create account</h2>
                            <div class="form-group">
                                <input type="text" class="form-input{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" id="name" placeholder="Your Name" value="{{ old('name') }}" required autofocus />
                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input{{ $errors->has('surname') ? ' is-invalid' : '' }}" name="surname" id="surname" placeholder="Your SurName" value="{{ old('surname') }}" required autofocus />
                                @if ($errors->has('surname'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('surname') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-input{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" id="email" value="{{ old('email') }}" required placeholder="Your Email"/>
                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" id="password" placeholder="Password" required/>
                                <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input"  id="password-confirm" name="password_confirmation" required placeholder="Repeat your password"/>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" id="submit" class="form-submit" value=@lang("Insert List")/>
                            </div>
                        </form>

                        <p class="loginhere">
                            Have already an account ? <a href="{{ route('login') }}">Login here</a>
                        </p>
                        <a href="{{url('/auth/facebook')}}" class="fa fa-facebook"></a>
<a href="{{url('/auth/twitter')}}" class="fa fa-twitter"></a>
<a href="{{url('/auth/google')}}" class="fa fa-google"></a>
<a href="{{url('/auth/linkedIn')}}" class="fa fa-linkedin"></a>
                    </div>

                </div>
            </section>

        </div>

    </div>

@endsection