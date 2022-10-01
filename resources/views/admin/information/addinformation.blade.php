@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Create Survey</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><Source:media>Survey</Source:media></li>
                        <li class="breadcrumb-item active">Create </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
    <form method="post" action="/addinfo">
        @csrf
    <div class="col-sm-12">
                <div class="card">
                  <div class="card-body">
                    <div class="form theme-form">
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label> Title</label>
                            <input class="form-control" type="text" placeholder=" name *" data-bs-original-title="" title="" name="title">
                          </div>
                        </div>
                      </div>
                   
                 
                      </div>
                      <div class="row">
                   
                    
                      <div class="col-sm-4">
                          <div class="mb-3">
                            <label>Year</label>
                            <input class="datepicker-here form-control" type="number" data-language="en" data-bs-original-title="" title="" name="year">
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="mb-3">
                            <label>Starting date</label>
                            <input class="datepicker-here form-control" type="date" data-language="en" data-bs-original-title="" title="" name="start">
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="mb-3">
                            <label>Ending date</label>
                            <input class="datepicker-here form-control" type="date" data-language="en" data-bs-original-title="" title="" name="end">
                          </div>
                        </div>
                      </div>
                  
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>Enter some Details</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="details"></textarea>
                          </div>
                        </div>
                      </div>
               
                      <div class="row">
                        <div class="col">
                          <div class="text-end"><button class="btn btn-success me-3" href="#" data-bs-original-title="" type="submit">Create</button><a class="btn btn-danger" href="#" data-bs-original-title="" title="">Cancel</a></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
    </form>
        
    </div>
    <!-- Container-fluid Ends-->
@endsection

@section('custom_js')
    @include('admin.layouts.modules.dashboard.scripts')
@endsection
