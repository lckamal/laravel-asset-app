@extends('layout')

@section('content')

<div class="login-box">
    @include('errors/validation')
    <div class="login-logo">Forgot your password?</div>
        <div class="login-box-body">
        
        <form action="/password/email" method="POST" role="form">
            {!! csrf_field() !!}
                
            <div class="form-group has-feedback">
                <label for="email">Email address</label>
                <input name="email" type="email" class="form-control" id="email" value="{{ old('email') }}" placeholder="Email">
                <span class="fa fa-envelope form-control-feedback"></span>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Send Password Reset Link</button>
            </div>
              
        </form>
    </div>
 </div>   

@stop