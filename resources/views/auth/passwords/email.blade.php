@extends('layouts.formLayout')

@section('content')
    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" action="{{ route('password.email') }}" id="signup-form" class="signup-form">
                        {{ csrf_field() }}
                        <h2 class="form-title">Reset Password</h2>
                        <div class="form-group">
                            <input type="email" class="form-input{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" id="email" value="{{ old('email') }}" required placeholder="Your Email"/>
                            @if ($errors->has('email'))
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                            @endif
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Send Password Reset Link"/>
                        </div>
                    </form>

                </div>
            </div>
        </section>

    </div>

@endsection