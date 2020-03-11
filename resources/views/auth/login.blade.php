@extends('layouts.app')
@section('content')
<!-- bradcam_area  -->
<div class="bradcam_area bradcam_bg_1">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text">
                    <h3>Саҳифаи воридавӣ ба система</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ bradcam_area  -->
<div class="container">
    <div class="logreg">
        <div class="main">
            <p class="sign" align="center">Вуруд ба система</p>
            <form class="form1" role="form" method="POST" action="{{ route('login') }}">
                {{ csrf_field() }}
                <div class="{{ $errors->has('email') ? ' has-error' : '' }}">
                    <input class="un " align="center" placeholder="Номи корбар" id="email" type="email" name="email"
                        value="{{ old('email') }}" required autofocus>
                    @if ($errors->has('email'))
                    <span class="help-block">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="{{ $errors->has('password') ? ' has-error' : '' }}">
                    <input class="pass" id="password" type="password" name="password" align="center" placeholder="Рамз"
                        required>
                    @if ($errors->has('password'))
                    <span class="help-block">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                    @endif
                    <div class="col-md-6 col-md-offset-4">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
                                Дар ёд дор!
                            </label>
                        </div>
                    </div>
                </div>
                <div>
                    <button type="submit" class="sub">
                        Воридшавӣ
                    </button>
                    <p class="forgot" align="center">
                        <a href="{{ route('password.request') }}">
                            Рамз фаромуш шудааст?
                        </a><br><a href="{{ route('register') }}">Сабти номи корбари нав</a></p>

                </div>
        </div>
    </div>
</div>
@endsection