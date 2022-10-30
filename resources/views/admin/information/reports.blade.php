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
                        <li class="breadcrumb-item active">Filter</li>
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
                  <div class="col-sm-3 pull-left">
                  <div class="input-group">

<form class="input-group" method="get" post="/viewreport">
<select class="form-control" name="nren">


@foreach($nrens as $nren)

<option value="{{$nren->id}}">{{$nren->nren}}</option>
@endforeach
</select>
<button class="btn btn-primary"  type="submit" data-bs-original-title="" title="">Load NREN</button>
</form>
</div>
</div>



                  <div class="col-sm-3 pull-right">
                  <div class="input-group">

<form class="input-group" method="get" post="/viewreport">
<select class="form-control" name="load">
<option value="all" >All</option>

@foreach($surveys as $survey)

<option value="{{$survey->id}}">{{$survey->year}}</option>
@endforeach
</select>
<button class="btn btn-primary"  type="submit" data-bs-original-title="" title="">Load Survey</button>
</form>
</div>
</div>
                    <h5></h5>
              
                    <div class="card-body ">




                    <!-- <div>
  <canvas id="myChart"></canvas>
</div> -->
<div class="row">
    <div>
    <canvas id="myCharttwo"></canvas>

</div>     
<!-- <div class="col-md-5">     
<canvas id="myChart" style="width:100%;max-width:800px"></canvas>
</div>
</div> -->


                  </div>
                </div>
              </div>
            </div>
</div>
</div>
    </div>
    <!-- Container-fluid Ends-->
@endsection
<i class='fa fa-trash'></i>
@section('custom_js')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    @include('admin.layouts.modules.dashboard.scripts')

    <script>


  const data = {
  labels: [
    'Answered',
    'Not Answered',
  
  ],
  datasets: [{
    label: 'Survey',
    data: [ {{$ans}}, {{$not}}],
    backgroundColor: [
      '	rgb(50,205,50)',
      'rgb(255, 99, 132)'
     
    ],
    hoverOffset: 4
  }]
};

  const config = {
    type: 'doughnut',
    data: data,
    options: {
        responsive: true
    // maintainAspectRatio: false
    }
  };
</script>
<script>
  const myChart = new Chart(
    document.getElementById('myCharttwo'),
    config
  );
</script>
<!-- <script>
var xValues = ['Answered', 'Not answered'];
var yValues = [ {{$ans}}, {{$not}}];
var barColors = ['rgb(50,205,50)', 'rgb(255, 99, 132)'];

new Chart("myChart", {
  type: "bar",
  data: {
    labels: [
    'Answered',
    'Not Answered',
  
  ],
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    responsive: true
  }
});
</script> -->

 
@endsection
