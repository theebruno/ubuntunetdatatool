@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Replies</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item">Survey</li>
                        <li class="breadcrumb-item active">Replies </li>
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
                             
                              <th>Question</th>
                             
                              <th>Answers</th>
                            </tr>
                        </thead>
                        <tbody>
    @foreach ($templates as $template)
    @foreach ($answers as $answer)
    @if($template->id==$answer->questionid)
    @if($answer->questionid==14)  
    <tr role="row" class="odd">
                        <td >14</td>
                            <td><b></b></td>
                            
                            <td> </td>
                                        
                     </tr> 
    <tr role="row" class="odd">
                        <td >14</td>
                            <td><b>Staff (number and roles):</b></td>
                            
                            <td> </td>
                                        
                     </tr>
             
    @endif
    @if($answer->questionid==18)   
    <tr role="row" class="odd">
                        <td >18</td>
                            <td><b></b></td>
                            
                            <td> </td>
                                        
                     </tr>
             
    @endif
    @if($answer->questionid==18)
   
                            
    <tr role="row" class="odd">
                        <td >18</td>
                            <td><b>

Scope of NREN intervention:</b></td>
                            
                            <td> </td>
                                        
                     </tr>
             
    @endif
    @if($answer->questionid==22)   
    <tr role="row" class="odd">
                        <td >22</td>
                            <td><b></b></td>
                            
                            <td> </td>
                                        
                     </tr>
             
    @endif
    @if($answer->questionid==25)   
    <tr role="row" class="odd">
                        <td >25
</td>
                            <td><b></b></td>
                            
                            <td> </td>      </tr>
                              
    <tr role="row" class="odd">
                        <td >25</td>
                            <td><b> Tell us about your 2022 Budget in US dollars:</b></td>
                            
                            <td> </td>
                                        
               
             
                     </tr>
             
    @endif
    @if($answer->questionid==27)   
    <tr role="row" class="odd">
                        <td >27</td>
                            <td><b></b></td>
                            
                            <td> </td>
                                        
                     </tr>
             
    @endif
    <!--  -->
    @if($answer->questionid==30)   
    <tr role="row" class="odd">
                        <td >30
</td>
                            <td><b></b></td>
                            
                            <td> </td>      </tr>
                              
    <tr role="row" class="odd">
                        <td >30</td>
                            <td><b> Institutes of higher education/ universities:</b></td>
                            
                            <td> </td>
                                        
               
             
                     </tr>
             
    @endif
    @if($answer->questionid==36)   
    <tr role="row" class="odd">
                        <td >36</td>
                            <td><b></b></td>
                            
                            <td> </td>
                                        
                     </tr>
             
    @endif

    <!--  -->
    @if($answer->questionid==36)   

                              
    <tr role="row" class="odd">
                        <td >36</td>
                            <td><b> Research institutes:</b></td>
                            
                            <td> </td>
                                        
               
             
                     </tr>
             
    @endif
    @if($answer->questionid==42)   
    <tr role="row" class="odd">
                        <td >42</td>
                            <td><b></b></td>
                            
                         
                                        
                     </tr>
             
    @endif
    <!--  -->
    @if($answer->questionid==42)   
   
                              
    <tr role="row" class="odd">
                        <td >42</td>
                            <td><b> Vocational education and training centers:</b></td>
                            
                            <td> </td>
                                        
               
             
                     </tr>
             
    @endif
    @if($answer->questionid==48)   
    <tr role="row" class="odd">
                        <td >48</td>
                            <td><b></b></td>
                            
                            <td> </td>
                                        
                     </tr>
             
    @endif
    <!--  -->
    @if($answer->questionid==48)   
   
                              
   <tr role="row" class="odd">
                       <td >48</td>
                           <td><b> Secondary school:</b></td>
                           
                           <td> </td>
                                       
              
            
                    </tr>
            
   @endif
   @if($answer->questionid==54)   
   <tr role="row" class="odd">
                       <td >54</td>
                           <td><b></b></td>
                           
                           <td> </td>
                                       
                    </tr>
            
   @endif
    <!--  -->
    @if($answer->questionid==54)   
   
                              
   <tr role="row" class="odd">
                       <td >54</td>
                           <td><b> Primary school:</b></td>
                           
                           <td> </td>
                                       
              
            
                    </tr>
            
   @endif
   @if($answer->questionid==60)   
   <tr role="row" class="odd">
                       <td >54</td>
                           <td><b></b></td>
                           
                           <td> </td>
                                       
                    </tr>
            
   @endif
    <!--  -->
    @if($answer->questionid==60)   
   
                              
   <tr role="row" class="odd">
                       <td >60</td>
                           <td><b> Libraries, museums, national archives:</b></td>
                           
                           <td> </td>
                                       
              
            
                    </tr>
            
   @endif
   @if($answer->questionid==66)   
   <tr role="row" class="odd">
                       <td >66</td>
                           <td><b></b></td>
                           
                           <td> </td>
                                       
                    </tr>
            
   @endif
    <!--  -->
    @if($answer->questionid==66)   
   
                              
   <tr role="row" class="odd">
                       <td >66</td>
                           <td><b>Hospitals (other than teaching/ university hospitals):</b></td>
                           
                           <td> </td>
                                       
              
            
                    </tr>
            
   @endif
   @if($answer->questionid==72)   
   <tr role="row" class="odd">
                       <td >72</td>
                           <td><b></b></td>
                           
                           <td> </td>
                                       
                    </tr>
                    @endif
            
    <!--  -->
    @if($answer->questionid==72)   
   
                              
   <tr role="row" class="odd">
                       <td >72</td>
                           <td><b>Government departments (national, regional, local):</b></td>
                           
                           <td> </td>
                                       
              
            
                    </tr>
            
   @endif
   @if($answer->questionid==78)   
   <tr role="row" class="odd">
                       <td >78</td>
                           <td><b></b></td>
                           
                           <td> </td>
                                       
                    </tr>
                    @endif
    <!--  -->
    @if($answer->questionid==78)   
   
                              
   <tr role="row" class="odd">
                       <td >78</td>
                           <td><b>For-profit organizations:</b></td>
                           
                           <td> </td>
                                       
              
            
                    </tr>
            
   @endif
   @if($answer->questionid==84)   
   <tr role="row" class="odd">
                       <td >84</td>
                           <td><b></b></td>
                           
                           <td> </td>
                                       
                    </tr>
                    @endif
    <!--  -->
    @if($answer->questionid==92)   
    <tr role="row" class="odd">
                       <td >92</td>
                           <td><b></b></td>
                           
                           <td> </td>
                                       
              
            
                    </tr>
                              
   <tr role="row" class="odd">
                       <td >92</td>
                           <td><b>Government departments (national, regional, local):</b></td>
                           
                           <td> </td>
                                       
              
            
                    </tr>
            
   @endif
   @if($answer->questionid==96)   
   <tr role="row" class="odd">
                       <td >96</td>
                           <td><b></b></td>
                           
                           <td> </td>
                                       
                    </tr>
                    @endif

    
  
    <tr role="row" class="odd">
                        <td tabindex="0" class="sorting_1">{{$template->id}}</td>
                            <td>{{$template->name}}</td>
                            
                            <td>{{$answer->name}}  </td>
                                         
                     </tr>
    @endif 
    <!--  -->
    
    <!--  -->
    @endforeach  
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
        "bPaginate": false,
        buttons: [
            {
                extend: 'copyHtml5',
                exportOptions: {
                    columns: [ 0, 1,2]
                },  messageTop: '{{$title}}'
            },
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: [ 0, 1,2]
                },
                messageTop: '{{$title}}'
            },
            {
                extend: 'pdfHtml5',
                exportOptions: {
                    columns: [ 0, 1,2]
                },
                messageTop: '{{$title}}'
            },
            {
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 1,2]
                },
                messageTop: '{{$title}}',
            },
            
        ]
    } 
     );
    </script>
@endsection
