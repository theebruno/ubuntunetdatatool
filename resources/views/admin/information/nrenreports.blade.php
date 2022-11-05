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


<option value="{{$nren->id}}"> {{$nren->nren}} </option>
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

                    <div>
  <canvas id="myChart"></canvas>
</div><br>
<div>
  <canvas id="myCharttwo"></canvas>
</div><br>
<div>
  <canvas id="myChartthree"></canvas>
</div><br>
<div>
  <canvas id="myChartfour"></canvas>
</div>
<br>
<div>
  <canvas id="myChartfive"></canvas>
</div><br>

<div>
  <canvas id="myChartsix"></canvas>
</div><br>

<div>
  <canvas id="myChartseven"></canvas>
</div>
<br>
<div>
  <canvas id="myCharteight"></canvas>
</div>
<br>
<div>
  <canvas id="myChartnine"></canvas>
</div>
<br>

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


<script>

var canvas = document.getElementById('myChart');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==93)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==96)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==97)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==98)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==99)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==100)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Colleges and universities'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>
<script>

var canvas = document.getElementById('myCharttwo');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==101)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==102)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==103)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==104)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==105)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==106)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Research Institutes'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>

<script>

var canvas = document.getElementById('myChartthree');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==107)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==108)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==109)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==110)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==111)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==112)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Technical and Vocational Education and Training Centres'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>
<script>

var canvas = document.getElementById('myChartfour');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==113)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==114)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==115)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==116)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==117)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==118)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Secondary Schools'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>
<script>

var canvas = document.getElementById('myChartfive');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==119)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==120)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==121)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==122)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==123)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==124)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Primary Schools'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>
<script>

var canvas = document.getElementById('myChartsix');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==125)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==126)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==127)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==128)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==129)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==130)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Libraries, museums, national archives'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>
<script>

var canvas = document.getElementById('myChartseven');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==131)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==132)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==133)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==134)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==135)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==136)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Hospitals (other than teaching/ university hospitals)'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>
<script>

var canvas = document.getElementById('myCharteight');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==137)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==138)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==139)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==140)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==141)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==142)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Government departments (national, regional, local)'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>
<script>

var canvas = document.getElementById('myChartnine');
new Chart(canvas, {
    type: 'line',
    data: {
        labels: [
@foreach($surveys as $survey)
'{{$survey->year}}',
@endforeach ],
        datasets: [{
            label: 'Estimated number in the country',
            yAxisID: 'A',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==143)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Estimate total students and staff',
            yAxisID: 'B',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==144)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of institutions that are members',
            yAxisID: 'C',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==145)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of institutions connected',
            yAxisID: 'D',
           data: [
@foreach($answers as $answer)
@if($answer->questionid==146)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Average bandwidth (in Mbps) per institution',
            yAxisID: 'E',
          data: [
@foreach($answers as $answer)
@if($answer->questionid==147)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Number of students and staff connected',
            yAxisID: 'F',
            data: [
@foreach($answers as $answer)
@if($answer->questionid==148)
'{{$answer->name}}',
@endif
@endforeach 
            ],
            fill: false,
            backgroundColor:'pink',
            borderColor:'pink',
            tension: 0.4
        }
    
    
    ]
    },
    options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'For-profit organizations'
      }
    },
    scales: {
      A: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      B: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      C: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },

      D: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      E: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      F: {
        type: 'linear',
        display: false,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      },
      
    }
  },
});

</script>
@endsection
