@extends('layouts.app')

@section('content')
   
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>Феҳристи курсҳои омӯзишӣ</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <!-- job_listing_area_start  -->
    <div class="job_listing_area plus_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="job_filter white-bg">
                        <div class="form_inner white-bg">
                            <h3>Ҷустуҷӯи курсҳо</h3>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <input style="font-size:16px;" type="text" placeholder="Search keyword">
                                        </div>
                                    </div>
                                    
                                </div>
                            </form>
                        </div> 
                        <div class="reset_btn">
                            <button  class="boxed-btn3 w-100" type="submit">Ҷустуҷӯ</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="recent_joblist_wrap">
                        <div class="recent_joblist white-bg ">
                            <div class="row align-items-center">
                                <div class="col-md-6">
                                    <h4>Курсҳои омӯзишӣ</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="serch_cat d-flex justify-content-end">
                                         
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="job_lists m-0">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                @if(count($posts) > 0)
                                 @foreach($posts as $post)
                                <div class="single_jobs white-bg d-flex justify-content-between">
                                    <div class="jobs_left d-flex align-items-center">
                                        <div style="padding-right:25px;">
                                            <img width="150px" src="/storage/cover_images/{{$post->cover_image}}">
                                        </div>
                                        <div class="jobs_conetent">
                                            <a href="job_details.html"><h4><a href="/posts/{{$post->id}}">{{$post->title}}</a></h4></a>
                                            <div class="links_locat d-flex align-items-center">
                                                <div class="location">
                                                    <p> <i class="fa fa-building"></i>{{$post->user->name}}</p>
                                                </div>
                                                <div class="location">
                                                    <p> <i class="fa fa-clock-o"></i> Part-time</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="jobs_right">
                                        <div class="apply_now">
                                            <a class="heart_mark" href="#"> <i class="fa fa-heart"></i> </a>
                                            <a href="/posts/{{$post->id}}" class="boxed-btn3">Бештар</a>
                                        </div>
                                        <div class="date">
                                            <p>Date line: {{$post->created_at}}</p>
                                        </div>
                                    </div>
                                </div>
                                @endforeach  
                                {{$posts->links()}}
                                @else
                                    <p>No posts found</p>
                                 @endif
                            </div> 
                        </div>
                         
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job_listing_area_end  -->
@endsection