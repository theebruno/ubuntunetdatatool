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
                  @foreach ($surveys as $survey)
                    <h5 class="mb-3">{{$survey->year}}</h5>
                  </div>
                  <div class="card-body">
                  <div class="table-responsive">
                      <table class="display" id="basic-1">
                        <thead>
                          <tr role="row">
                          <th>ID</th>    
                              <th>NREN</th>
                              <th>Answered</th>
                              <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
    @foreach ($nrens as $nren)
                        <tr role="row" class="odd">
                        <td>
                            {{$nren->id}}
</td>
                        <td>
                    
                            

                                 {{$nren->nren}}
                               
                               
                           
                            </td>
                          
                            <td>
                                 
                        @foreach($nrenusers as $nrenuser) 
                        @if($nren->id==$nrenuser->nrenid)
                          
                                @foreach($surveystatuses as $status)  
                                @if($status->userid==$nrenuser->nrenid &&  $status->status=="answered")

                                 <span class="badge rounded-pill badge-primary">YES</span>
                               
                                @endif
                                 
                        @endforeach
                        @endif       
                        @endforeach
                              
                            </td>
                            
                            <td>
                                
                        <div>
    <div>
        <div class="form-group text-center">
         

                                    <a href="/view/{{$survey->id}}/{{$nren->id}}/{{$survey->year}}/{{$nren->nren}}"class="btn btn-success btn-air-danger btn-sm p-2" 
                data-original-title="open survey" data-bs-target="#delete-{{$survey->id}}" title="open reply"><i
                    class="fa fa-eye"></i></a>
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
                  @endforeach
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
                    columns: [ 0, 1,2,3]
                }
            },
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: [ 0, 1,2,3]
                }
            },
            {
                extend: 'pdfHtml5',
                exportOptions: {
                    columns: [ 0, 1,2,3]
                }
            },
            {
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 1,2,3]
                }
            },
            
        ]
    } 
     );
    </script>
@endsection
