@extends('layout')

@include('errors/validation')

@section('content')
    
    <form action="/password/reset" method="POST" role="form">
        {!! csrf_field() !!}
        <input type="hidden" name="token" value="{{ $token }}">
        <fieldset>
            <legend>Reset your password</legend>
        
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4">
                    <div class="form-group">
                        <label for="emailInput">Email address</label>
                        <input name="email" type="email" class="form-control" id="emailInput" value="{{ old('email') }}" placeholder="Email">
                      </div>
                      <div class="form-group">
                        <label for="passwordInput">Password</label>
                        <input name="password" type="password" class="form-control" id="passwordInput" placeholder="Password">
                      </div>
                      <div class="form-group">
                        <label for="password_confirmation">Confirm Password</label>
                        <input name="password_confirmation" type="password" class="form-control" id="password_confirmation" placeholder="Password">
                      </div>
                      <button type="submit" class="btn btn-primary">Reset Password</button>

                </div>
            </div>
        </fieldset>
    </form>
    

@stop