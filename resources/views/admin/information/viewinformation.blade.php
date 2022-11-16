@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>View surveys</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item">Survey</li>
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
                              <div class=" pull-right">
                     <button class="btn btn-info pull-right"id="dem" onclick="myFunction()">Export CSV</button><br>
                           <button class="btn btn-info pull-right"id="demo" onclick="myFunction()">Export PDF</button>
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
                               <th  style="display:none;">ID</th>
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
                        <tr role="row" class="odd">
                               <td><input type="checkbox" name="export" class="export" value="{{$survey->id}}"></td>
                                  <td  style="display:none;">{{$survey->id}}</td>
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
                            <td>{{$survey->start}}</td>
                            <td>{{$survey->end}}</td>
                            <td>
                        <div>
    <div>
        <div class="form-group text-center">
            <!-- <form method="post" action="/infodetails">
                @csrf -->
              @if($survey->status=="running")
                <button class="btn btn-warning btn-air-danger btn-sm p-2" type="button" data-bs-toggle="modal"
                data-original-title="Delete" data-bs-target="#status-{{$survey->id}}" title="stop survey"><i
                    class="fa fa-times"></i></button>

             @endif
             @if($survey->status=="ended")
                <button class="btn btn-warning btn-air-danger btn-sm p-2" type="button" data-bs-toggle="modal"
                data-original-title="Delete" data-bs-target="#status-{{$survey->id}}" title="start survey"><i
                    class="fa fa-check"></i></button>

             @endif
                                    <a  class="btn btn-success btn-air-info btn-sm p-2" href="/infodetails/{{$survey->id}}"
                data-toggle="tooltip" placement="top" title="delete"  name="id" value="{{$survey->id}}"><i class="fa fa-eye"></i></a>

                  <a  class="btn btn-primary btn-air-primary btn-sm p-2" href="/infoedit/{{$survey->id}}"
                data-toggle="tooltip" placement="top" title="edit"  name="id" value="{{$survey->id}}"><i class="fa fa-pen"></i></a>

                                    <button class="btn btn-danger btn-air-danger btn-sm p-2" type="button" data-bs-toggle="modal"
                data-original-title="Delete" data-bs-target="#delete-{{$survey->id}}" title="delete"><i
                    class="fa fa-trash"></i></button>
                    <!-- </form> -->
                        
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="delete-{{$survey->id}}" tabindex="-1" role="dialog"
        aria-labelledby="delete-2" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                                <div class="modal-header bg-danger">
                    <h5 class="modal-title" id="exampleModalLabel">Delete Item !</h5>
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/destroyinfo" method="POST">
                    @csrf
                    <input type="hidden" name="id" value="{{$survey->id}}"> <div class="modal-body">
                        Are you sure you want to delete this item.
                        <br>

                    </div>
                    <div class="modal-footer">
                        <button class="close btn grey btn-danger btn-air-danger" type="button" data-bs-dismiss="modal"
                            aria-label="Close">Close </button>

                        <button type="submit" class="btn btn-danger btn-air-danger">Yes Delete It !</button>
                    </div>
                </form>
           </div>
        </div>
    </div>
       <div class="modal fade" id="delete-{{$survey->id}}" tabindex="-1" role="dialog"
        aria-labelledby="delete-2" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                                <div class="modal-header bg-danger">
                    <h5 class="modal-title" id="exampleModalLabel">Delete Item !</h5>
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/destroyinfo" method="POST">
                    @csrf
                    <input type="hidden" name="id" value="{{$survey->id}}"> <div class="modal-body">
                        Are you sure you want to delete this item.
                        <br>

                    </div>
                    <div class="modal-footer">
                        <button class="close btn grey btn-danger btn-air-danger" type="button" data-bs-dismiss="modal"
                            aria-label="Close">Close </button>

                        <button type="submit" class="btn btn-danger btn-air-danger">Yes Delete It !</button>
                    </div>
                </form>
           </div>
        </div>
    </div>
</div>  

<div class="modal fade" id="status-{{$survey->id}}" tabindex="-1" role="dialog"
        aria-labelledby="delete-2" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                                <div class="modal-header bg-primary">
                    <h5 class="modal-title" id="exampleModalLabel">Change status !</h5>
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/status" method="POST">
                @csrf
                    <input type="hidden" name="id" value="{{$survey->id}}"> <div class="modal-body">
                    @if($survey->status=="running")
                    <input type="hidden" name="status" value="ended"> <div class="modal-body">
                    @endif
                    @if($survey->status=="ended")
                    <input type="hidden" name="status" value="running"> <div class="modal-body">
                    @endif

                  
                    @if($survey->status=="running")
                    Are you sure you want to disable survey {{$survey->year}}
                    <br>
                    @endif
                    @if($survey->status=="ended")
                    Are you sure you want to enable survey {{$survey->year}}
                    <br>
                    @endif

                    </div>
</div>
                    <div class="modal-footer">
                        <button class="close btn grey btn-danger btn-air-danger" type="button" data-bs-dismiss="modal"
                            aria-label="Close">Close </button>

                        <button type="submit" class="btn btn-primary btn-air-primary">Yes!</button>
                    </div>
                </form>
           </div>
        </div>
    </div>
</div>  


                  </td>
                            
                          </tr>
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
    $('#basic-1').DataTable({
        columnDefs: [
            {
                target: 2,
                visible: false,
                searchable: false,
            },
            {
                target: 3,
                visible: false,
            },
        ],
    });

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
 window.location.href = '/exportall/'+checkedValue;
}

</script>
@endsection
