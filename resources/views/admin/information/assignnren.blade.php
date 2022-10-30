@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>NREN information</h3>
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
               


<form class="input-group" method="get" action="/addanswers">
<a class="btn btn-primary" href="/nrenadd" title="">ADD NREN</a>
</form>

</div>
                  </div>
                  <div class="card-body">
                  <div class="table-responsive">
                      <table class="display" id="basic-1">
                        <thead>
                          <tr role="row">
                              <th>NAME</th>
                              <th>NREN</th>
                              <th>ACTION</th>
                             
                          </tr>
                        </thead>
                        <tbody>
    @foreach ($users as $user)
                        <tr role="row" class="odd">
                           
                  <td>{{$user->name}}</td>
                  <form method="get" action="/reassignnren">
                      @csrf
                  <input type="hidden" name="userid" value="{{$user->id}}">
                  <td>
              
                  <select class="form-control" name="nrenid">
                 
                      @foreach($nrenusers as $nrenuser)
@if($nrenuser->userid==$user->id)
<!-- now getting nren name after mapping -->
@foreach($nrens as $nren)
@if($nrenuser->nrenid==$nren->id)
<option value="{{$nren->id}}">{{$nren->nren}}</option>
@endif
@endforeach
                      @endif
                      @endforeach
                      <?php echo getNREN("".$user->id."");?>

@foreach($nrens as $nren)

<option value="{{$nren->id}}">{{$nren->nren}}</option>
@endforeach
</select>
                  </td>
                          

                  <td>
                                
                                <div>
            <div>
                <div class="form-group text-center">
                 
        
                                         
                            <button class="btn btn-primary btn-air-danger btn-sm p-2" type="submit" data-bs-toggle="modal"
                data-original-title="" data-bs-target="" title="delete"> Assign </button>
</form>
<!-- edit -->
           
       








       
                            <!-- </form> -->
                                
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
    $('#basic-1').DataTable(

        {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'copyHtml5',
                exportOptions: {
                    columns: [ 0, 1]
                },  messageTop: 'NREN lists'
            },
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: [ 0, 1]
                },  messageTop: 'NREN lists'
            },
            {
                extend: 'pdfHtml5',
                exportOptions: {
                    columns: [ 0, 1]
                },  messageTop: 'NREN lists'
            },
            {
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 1]
                },  messageTop: 'NREN lists'
            },
            
        ]
    } 
     );
    </script>
@endsection
