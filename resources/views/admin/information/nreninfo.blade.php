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
                              <th>ACTION</th>
                             
                          </tr>
                        </thead>
                        <tbody>
    @foreach ($nrens as $nren)
                        <tr role="row" class="odd">
                           
                  <td>{{$nren->nren}}</td>
                          

                  <td>
                                
                                <div>
            <div>
                <div class="form-group text-center">
                 
        
                                            <a class="btn btn-success btn-air-danger btn-sm p-2" href="/nrenedit/{{$nren->id}}"><i
                            class="fa fa-pen"></i></a>
                            <button class="btn btn-danger btn-air-danger btn-sm p-2" type="button" data-bs-toggle="modal"
                data-original-title="Delete" data-bs-target="#delete-{{$nren->id}}" title="delete"><i
                    class="fa fa-trash"></i></button>
                
<!-- edit -->
           
       








       
                            <!-- </form> -->
                                
                </div>
            </div>
          
        
        
                          </td>
                            
                          </tr>
                              <!-- delete -->
                              <div class="modal fade" id="delete-{{$nren->id}}" tabindex="-1" role="dialog"
        aria-labelledby="delete-2" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                                <div class="modal-header bg-danger">
                    <h5 class="modal-title" id="exampleModalLabel">Delete Item !</h5>
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/destroynren" method="POST">
                    @csrf
                    <input type="hidden" name="id" value="{{$nren->id}}"> <div class="modal-body">
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
