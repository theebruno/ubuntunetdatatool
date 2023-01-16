@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Reports</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item">Reports</li>
                        <li class="breadcrumb-item active">Fiches</li>
                    </ol>
                </div>
            </div>
          
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
    <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header">
 


<h5>@if($theyear)
  @foreach($theyear as $year)
  {{$year->year}}
  @endforeach
@endif</h5>
                  <div class="col-sm-3 pull-right">
                  <div class="input-group">

<form class="input-group" method="get" post="/fiches">
<select class="form-control" name="year">
<option>Choose Year</option>

@foreach($surveys as $survey)

<option value="{{$survey->id}}">{{$survey->year}}</option>
@endforeach
</select>
<button class="btn btn-primary"  type="submit" data-bs-original-title="" title="">Load Data</button>
</form>
</div>
</div>
              </div>      
              
                    <div class="card-body ">
<div class="table-responsive">
     <table  id="base">
                             <thead>
                          <tr>
                            
                              <th>#</th>
                              <th>Number connected to the NREN</th>
                              <th >Colleges and universities</th>
                              <th >Research Institutes</th>
                                <th >Technical and Vocational Education and Training Centres</th>
                              <th >Secondary Schools</th>
                              <th >Primary schools</th>
                                 <th >Libraries, museums, national archives</th>
                                    <th >Hospitals (other than teaching/ university hospitals)</th>
                                       <th >Government departments (national, regional, local)</th>
                                          <th >For-profit organizations</th>
                                             <th >Number of members</th>
                                                <th>Number of End Users</th>

                            </tr>
                          </thead>
                          @if($answers)
                          <tbody>
                            @foreach($nrens as $nren)
                            <tr>
                                <td>{{$nren->nren}}</td>
                              <td><?php 
$value=0;                              
foreach ($answers as $answer) {
  if ($answer->userid==$nren->id) {
if($answer->questionid==98){
  $value+=$answer->name;
    }
    if($answer->questionid==104){
  $value+=$answer->name;
    }
       if($answer->questionid==110){
  $value+=$answer->name;
    }
          if($answer->questionid==116){
  $value+=$answer->name;
    }
           if($answer->questionid==122){
  $value+=$answer->name;
    }
             if($answer->questionid==128){
  $value+=$answer->name;
    }
             if($answer->questionid==134){
  $value+=$answer->name;
    }
                 if($answer->questionid==140){
  $value+=$answer->name;
    }
                 if($answer->questionid==146){
  $value+=$answer->name;
    }
}

}
echo $value;
$value=0;
?>
</td>
                              <td>
                                @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==93)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach
                      </td>
                                <td>  @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==101)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach</td>
                                  <td> @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==107)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach</td>
                                    <td> @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==113)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach</td>
                                      <td> @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==119)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach</td>
                                        <td> @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==125)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach</td>
                                          <td> @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==131)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach</td>
                                            <td> @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==137)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach</td>
                                              <td> @foreach($answers as $answer)
                              
                              @if($answer->userid==$nren->id)
                              @if($answer->questionid==143)
                              {{$answer->name}}
                              @endif

                              @endif

                              @endforeach</td>
                                                <td><?php 
$value=0;                              
foreach ($answers as $answer) {
  if ($answer->userid==$nren->id) {
if($answer->questionid==97){
  $value+=$answer->name;
    }
    if($answer->questionid==103){
  $value+=$answer->name;
    }
       if($answer->questionid==109){
  $value+=$answer->name;
    }
          if($answer->questionid==115){
  $value+=$answer->name;
    }
           if($answer->questionid==121){
  $value+=$answer->name;
    }
             if($answer->questionid==127){
  $value+=$answer->name;
    }
             if($answer->questionid==133){
  $value+=$answer->name;
    }
                 if($answer->questionid==139){
  $value+=$answer->name;
    }
                 if($answer->questionid==145){
  $value+=$answer->name;
    }
}

}
echo $value;
?></td>
                                                  <td><?php 
$value=0;                              
foreach ($answers as $answer) {
  if ($answer->userid==$nren->id) {
if($answer->questionid==100){
  $value+=$answer->name;
    }
    if($answer->questionid==106){
  $value+=$answer->name;
    }
       if($answer->questionid==112){
  $value+=$answer->name;
    }
          if($answer->questionid==118){
  $value+=$answer->name;
    }
           if($answer->questionid==124){
  $value+=$answer->name;
    }
             if($answer->questionid==130){
  $value+=$answer->name;
    }
             if($answer->questionid==136){
  $value+=$answer->name;
    }
                 if($answer->questionid==142){
  $value+=$answer->name;
    }
                 if($answer->questionid==150){
  $value+=$answer->name;
    }
}

}
echo $value;
?></td>
                            </tr>
                            @endforeach
                          </tbody>
                        @endif
                          </table>

</div>


                    <!-- <div>
  <canvas id="myChart"></canvas>
</div> -->

                </div>
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
 $('#base').DataTable({
   // dom: 'Bfrtip'

 });
    </script>
 
@endsection
