@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Dashboard</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Default </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <h1 class="text-center">Welcome To Dashboard</h1>
        <div class="row">
              <div class="col-sm-6 col-xl-3 col-lg-6">
                <div class="card o-hidden static-top-widget-card">
                  <div class="card-body">
                    <div class="media static-top-widget">
                      <div class="media-body">
                        <h6 class="font-roboto">Surveys</h6>
                        <h4 class="mb-0 counter">{{$surveys}}</h4>
                      </div>
                      <i class="fa fa-clipboard-list fa-4x" style="color:#dc3545;"></i>
                    </div>
                    <div class="progress-widget">
                      <div class="progress sm-progress-bar progress-animate">
                        <div class="progress-gradient-secondary" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-xl-3 col-lg-6">
                <div class="card o-hidden static-top-widget-card">
                  <div class="card-body">
                    <div class="media static-top-widget">
                      <div class="media-body">
                        <h6 class="font-roboto">Responses</h6>
                        <h4 class="mb-0 counter">
                        @if(auth()->user()->hasRole('admin'))  
                        
                        
                   
                      {{$repliesall}}
                      @else
                      {{$replies}}
                      @endif
                      
                      
                      </h4>
                      </div>
                  
                     <i class="fa fa-clipboard-check fa-4x" style="color:#198754;" ></i>
                    </div>
                    <div class="progress-widget">
                      <div class="progress sm-progress-bar progress-animate">
                        <div class="progress-gradient-success" role="progressbar" style="width: 60%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
@if(auth()->user()->hasRole('admin'))
              <div class="col-sm-6 col-xl-3 col-lg-6">
                <div class="card o-hidden">
                  <div class="card-body">
                    <div class="media static-top-widget">
                      <div class="media-body">
                        <h6 class="font-roboto">Users</h6>
                        <h4 class="mb-0 counter">{{$users}}</h4>
                      </div>
                      <i class="fa fa-users fa-4x" style="color:#0d6efd;" ></i>
                    </div>
                    <div class="progress-widget">
                      <div class="progress sm-progress-bar progress-animate">
                        <div class="progress-gradient-primary" role="progressbar" style="width: 48%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-sm-6 col-xl-3 col-lg-6">
                <div class="card o-hidden">
                  <div class="card-body">
                    <div class="media static-top-widget">
                      <div class="media-body">
                        <h6 class="font-roboto">Questions</h6>
                        <h4 class="mb-0 counter">{{$templates}}</h4>
                      </div>
                      <i class="fa fa-question fa-4x" style="color:#ffc107;" ></i>
                  
                    </div>
                    <div class="progress-widget">
                      <div class="progress sm-progress-bar progress-animate">
                        <div class="progress-gradient-warning" role="progressbar" style="width: 48%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
      @endif
</div>
</div>
    </div>
    <!-- Container-fluid Ends-->
@endsection

@section('custom_js')
    @include('admin.layouts.modules.dashboard.scripts')
   
@endsection
