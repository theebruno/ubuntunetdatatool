<!-- @extends('adminetic::admin.layouts.app') -->

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>View Replies</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item">Replies</li>
                        <li class="breadcrumb-item active">View </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
    <div class="col-sm-12">
                <div class="card">
                <div class="card-header">
                     <div class="col-xl-6 col-sm-12">
                        <div class="btn-group" role="group" aria-label="Basic example">
                     
                          <button class="btn btn-primary btn-lg" onclick="myFunctionTwo()">Export CSV</button>
                          <button class="btn btn-primary btn-lg" onclick="myFunction()">Export PDF</button>
                        </div>
                      </div>
          </div>
                  <!-- <div class="card-header"> -->
                    <!-- <h5 class="mb-3">Configuration Option</h5><span>The Responsive extension for DataTables can be applied to a DataTable in one of two ways; with a specific class name on the table, or using the DataTables initialisation options. This method shows the latter, with the responsive option being set to the boolean value true.</span>
                  </div> -->
                  <div class="card-body">
                     
                  <div class="table-responsive">
                      <table class="display" id="basic-1">
                        <thead>
                          <tr role="row">
                               <th></th>
                               <th style="display:none;">ID</th>
                              <th>Title</th>
                              <th >Description</th>
                              <th >Status</th>
                              <th >Year</th>
                      
                              <th>Start Date</th>
                              <th>End Date</th>
                              <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
    @foreach ($surveys as $survey)
        @foreach($surveystatuses as $status)   
                                @if($status->surveyid==$survey->id && $status->status=="answered")
                        <tr role="row" class="odd">
                                 <td><input type="checkbox" name="export" class="export" value="{{$survey->id}}"></td>
                               <td style="display:none;">{{$survey->id}}</td>
                            <td>{{$survey->title}}</td>
                            <td>{{$survey->details}}</td>
                            <td>
@if($survey->status=="running")
<span class="badge rounded-pill badge-success">{{$survey->status}}</span>
@endif
@if($survey->status=="ended")
<span class="badge rounded-pill badge-danger">{{$survey->status}}</span>
@endif

                            </td>
                            <td>{{$survey->year}}</td>
                     
                            </td>
                            <td>{{$survey->start}}</td>
                            <td>{{$survey->end}}</td>
                            <td>
                        <div>
    <div>
        <div class="form-group text-center">
            <!-- <form method="post" action="/infodetails">
                @csrf -->
             
                                    <a  class="btn btn-success btn-air-info btn-sm p-2" href="/view/{{$survey->id}}/{{Auth::user()->id }}/{{$survey->year}}/nren"
                data-toggle="tooltip" placement="top" title="view"  name="id" value="{{$survey->id}}"><i class="fa fa-eye"></i></a>

                               
                    <!-- </form> -->
                        
        </div>
    </div>

</div>                    </td>
                            
                          </tr>
                             @endif
                            
                               
                               @endforeach
    @endforeach                 
                        </tbody>
                       
                      </table>
                    </div>
                  </div>
                </div>
              </div>
    </div>
    <!-- Container-fluid Ends-->


@endsection

@section('custom_js')
    @include('admin.layouts.modules.dashboard.scripts')
    <script>
     $('#basic-1').DataTable(


);
    </script>
   <script>
function myFunction() {
 var checkedValue=""; 
var inputElements = document.getElementsByClassName('export');
for(var i=0; inputElements[i]; ++i){
      if(inputElements[i].checked){
           checkedValue += inputElements[i].value+',';
          
         
      }
}
 window.location.href = '/exportnren/'+checkedValue;
}

</script>
   <script>
function myFunctionTwo() {
 var checkedValue=""; 
var inputElements = document.getElementsByClassName('export');
for(var i=0; inputElements[i]; ++i){
      if(inputElements[i].checked){
           checkedValue += inputElements[i].value+',';
          
         
      }
}
 window.location.href = '/csvall/'+checkedValue;
}

</script>


@endsection
