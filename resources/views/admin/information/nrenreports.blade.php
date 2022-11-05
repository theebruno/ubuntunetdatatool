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
</div>
<div>
  <canvas id="myCharttwo"></canvas>
</div>
<div>
  <canvas id="myChartthree"></canvas>
</div>
<div>
  <canvas id="myChartfour"></canvas>
</div>

<div>
  <canvas id="myChartfive"></canvas>
</div>

<div>
  <canvas id="myChartsix"></canvas>
</div>

<div>
  <canvas id="myChartseven"></canvas>
</div>

<div>
  <canvas id="myCharteight"></canvas>
</div>

<div>
  <canvas id="myChartnine"></canvas>
</div>


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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
        text: 'Institutes of higher education/ universities'
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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
        text: 'Research institutes'
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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
        text: 'Vocational education and training centers'
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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
        text: 'Secondary school'
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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
        text: 'Primary school'
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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
        labels: ['2021', '2022', '2023', '2024', '2025'],
        datasets: [{
            label: 'Number of organizations connected to the NREN backbone',
            yAxisID: 'A',
            data: [10, 96, 84, 76, 69],
            fill: false,
            backgroundColor:'red',
            borderColor:'red',
            tension: 0.4
        }, 
        {
            label: 'Average bandwidth (in Mbit/s)',
            yAxisID: 'B',
            data: [5, 43, 80, 67, 69],
            fill: false,
            backgroundColor:'blue',
            borderColor:'blue',
            tension: 0.4
        },
        {
            label: 'Number of organizations member of the NREN',
            yAxisID: 'C',
            data: [10, 20, 30, 40, 50],
            fill: false,
            backgroundColor:'green',
            borderColor:'green',
            tension: 0.4
        },
        {
            label: 'Number of end-users connected to the NREN backbone',
            yAxisID: 'D',
            data: [39, 50, 10, 80, 2],
            fill: false,
            backgroundColor:'purple',
            borderColor:'purple',
            tension: 0.4
        },
        {
            label: 'Estimated number of organizations in the country',
            yAxisID: 'E',
            data: [90, 40, 80, 23, 6],
            fill: false,
            backgroundColor:'yellow',
            borderColor:'yellow',
            tension: 0.4
        },
        {
            label: 'Estimated number of users in the country',
            yAxisID: 'F',
            data: [10, 30, 90, 5, 69],
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
