@extends('layouts.index')

@section('content')
    <div class="main">

        <section class="signup login-new">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="new">
                <div class="signup-content">
                    <form method="POST" action="{{ route('login') }}" id="signup-form" class="signup-form">
                        {{ csrf_field() }}
                        <h2 class="form-title">Sign In</h2>
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
                            @if ($errors->has('password'))
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                            @endif
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Sign In"/>
                            <a class="btn btn-link" href="{{ route('password.request') }}">
                                {{ __('Forgot Your Password?') }}
                            </a>
                        </div>
                        <!-- Add font awesome icons -->

                    </form>
<a href="{{url('/auth/facebook')}}" class="fa fa-facebook"></a>
<a href="{{url('/auth/twitter')}}" class="fa fa-twitter"></a>
<a href="{{url('/auth/google')}}" class="fa fa-google"></a>
<a href="{{url('/auth/linkedIn')}}" class="fa fa-linkedin"></a>
                </div>
            </div>
        </section>

    </div>

@endsection