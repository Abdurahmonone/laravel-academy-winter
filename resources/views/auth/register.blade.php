@extends('layouts.app')

@section('content') 
<!-- bradcam_area  -->
<div class="bradcam_area bradcam_bg_1">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text">
                    <h3>blog</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ bradcam_area  -->
<div class="container">
    <div class="logreg">
        <div class="mainreg">
            <p class="sign" align="center">Сабти номи корбари нав</p>
            <form class="form1" role="form" method="POST" action="{{ route('register') }}">
                {{ csrf_field() }}
                <div class=" {{ $errors->has('name') ? ' has-error' : '' }}">
                    <input class="un " align="center" id="name" type="text" name="name" value="{{ old('name') }}" placeholder="Номи шумо" required autofocus>
                    @if ($errors->has('name'))
                        <span class="help-block">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                    @endif
                </div>
                <div class=" {{ $errors->has('email') ? ' has-error' : '' }}">
                    <input class="un " align="center" id="email" type="email" class="form-control" name="email"
                        value="{{ old('email') }}" required placeholder="Почтаи электронӣ">
                        @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif
                </div>
                <div class=" {{ $errors->has('password') ? ' has-error' : '' }}">
                    <input class="pass" align="center" id="password" type="password" class="form-control"
                        name="password" placeholder="Рамз" required>
                        @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                </div>
                <div>
                <input class="pass" align="center" id="password-confirm" type="password" class="form-control"
                    name="password_confirmation" placeholder="Такрори рамз" required>

                <button type="submit" class="sub">
                    Сабти ном
                </button>
                
                </div>
        </div>
    </div>
</div>
@endsection
