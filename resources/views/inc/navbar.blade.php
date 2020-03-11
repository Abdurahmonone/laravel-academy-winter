<!-- header-start -->
<header>
    <div class="header-area ">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid ">
                <div class="header_bottom_border">
                    <div class="row align-items-center">

                        <div class="col-xl-6 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation" style="margin:-20px;">
                                        <li> <a href="/">
                                                <img src="img/logo.png" alt=""> </a>
                                        </li>
                                        <li><a href="/">Асоси</a></li>
                                        <li><a href="/posts">Феҳристҳо</a></li>
                                        @if (Auth::guest())
                                        <li><a href="{{ route('login') }}">Вуруд</a></li>
                                        @else
                                        <li><a data-toggle="dropdown" role="button" aria-expanded="false">
                                                {{ Auth::user()->name }}
                                                <i class="ti-angle-down"></i>
                                            </a>
                                            <ul class="submenu">
                                                <li><a href="/dashboard">Панели идоракунӣ</a></li>
                                                <li>
                                                    <a href="{{ route('logout') }}"
                                                        onclick="event.preventDefault();
                                                                      document.getElementById('logout-form').submit();">
                                                        Баромадан
                                                    </a> 
                                                    <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                                        style="display: none;">
                                                        {{ csrf_field() }}
                                                    </form>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                    </ul>@endif
                                </nav>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>
<!-- header-end -->