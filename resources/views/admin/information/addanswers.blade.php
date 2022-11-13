@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Add answers</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item">Survey</li>
                        <li class="breadcrumb-item active">Answer</li>
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
                  <div class="col-sm-3 pull-right">
                  <div class="input-group">

                  <!-- Country: Kenya
NREN: KENET
Network Name:Kenya Education Network
Website URL: https://www.kenet.or.ke/
Address: 30244 – 00100 Nairobi,
Kenya
Gen. e-mail: info@kenet.or.ke
Tel: +254 732150500 or
+254 703044000
Fax: N/A
year of create
legal entity
year of goverrnance



change users to nren
sorting nren
remove some fields -->


<form class="input-group" method="get" action="/addanswers/{{$id}}">
@foreach($surveys as $survey)

  <?php $ss=$survey->status;?>
@endforeach
<select class="form-control" name="load" required="">
  <option value="saved">Select Year</option>
<!-- <option value="saved" >Saved data</option> -->
@foreach($allsurveys as $allsurvey)
@foreach($surveys as $survey)

@if($survey->year!=$allsurvey->year)
 <option value="{{$allsurvey->id}}">{{$allsurvey->year}}</option>
@endif

@endforeach

@endforeach
</select>
<button class="btn btn-primary"  type="submit" data-bs-original-title="" title="">Load previous data</button>
</form>
</div>
</div>
                    
                    <h5>
                     @foreach($surveys as $survey)

  <?php echo $survey->year;?>
@endforeach 
                    </h5>
                   
                    <div class="card-body">
    <form class="form-wizard" id="regForm" action="/respond" method="POST" enctype="multipart/form-data" >
                      
         
                    <br>
<?php if(responseReady(Auth::id())=='no'){
  echo '<div class="alert alert-danger inverse alert-dismissible fade show" role="alert"><i class="icon-help-alt"></i>
                      <p><b>ERROR!</b> You have not yet been assigned to an NREN.</p>
                      <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close" data-bs-original-title="" title=""></button>
                    </div>';

}?>
<?php if($ss=='ended'){
  echo '<div class="alert alert-warning inverse alert-dismissible fade show" role="alert"><i class="icon-help-alt"></i>
                      <p><b>Warning!</b> Survey has been disabled.</p>
                      <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close" data-bs-original-title="" title=""></button>
                    </div>';

}?>
@csrf

@foreach($nrenusers as $nrenuser)
@if($nrenuser->userid==Auth::id())
@foreach($nrens as $nren)

@if($nren->id==$nrenuser->nrenid)
<input type="hidden" name="nrenid" value="{{$nrenuser->nrenid}}">
@endif

@endforeach
@endif

@endforeach


                      @foreach($surveys as $survey)
                      <input type="hidden" name="surveyid" value="{{$survey->id}}">
                      <?php $ss=$survey->status;?>
                      @endforeach
<!-- step one -->

<div class="tab" style="display: block;">
<h6 class="text-center">GENERAL INFORMATION</h6>
                      @foreach($templates as $template)
                     

                  
                      @if($template->step==1)
       
                      @if($template->type=="text")
                        <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="
@if($answers)
@foreach($answers as $answer)

@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
" name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif

                      @if($template->type=="textarea")
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>{{$template->name}}</label>
<textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
</textarea>
                          </div>
                        </div>
                      </div>
                      @endif
                
                      @endif
                   
                      @endforeach
                      </div>
<!--  -->

<!-- step 2 -->
<div class="tab">
<h6 class="text-center">ORGANISATION AND GUIDANCE</h6>

        @foreach($templates as $template)
                               
        @if($template->step==2)
       
        @if($template->type=="text")
<div class="mb-3">
<label for="name">{{$template->name}}</label>
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="

@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif

" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
                      @endif

@if($template->type=="textarea")
       <div class="row">
       <div class="col">
       <div class="mb-3">
      <label>{{$template->name}}</label>
<textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
</textarea>
</div>
</div>
</div>
@endif

@if($template->type=="checkbox")
<div class="mb-3">
<label for="name">{{$template->name}}</label>

@foreach(json_decode($template->options) as $k => $v)
<label class="d-block" for="chk-ani">
<input class="checkbox_animated" id="chk-ani"
   @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                          @foreach(json_decode($answer->name) as $k) 
                          @if($k==$v)
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          @endforeach
                          @endif

 name="{{$template->id}}[]" value="{{$v}}" type="checkbox" data-bs-original-title="" title="">{{$v}}
</label>
@endforeach 

</div>
@endif
@if($template->type=="radio")
<div class="row">
<div class="col-sm-12">
                        <label>{{$template->name}}</label>
                      </div>
                      <div class="col">
                        <div class="mb-3 m-t-15 custom-radio-ml">
                          <div class="form-check radio radio-success">
                            <input class="form-check-input" id="radio{{$template->id}}" type="radio" name="{{$template->id}}" value="Yes" 

  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="Yes")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif

                            data-bs-original-title="" title="">
                            <label class="form-check-label" for="radio{{$template->id}}">Yes</label>
                          </div>
                         
                          <div class="form-check radio radio-danger">
                            <input class="form-check-input" id="rad{{$template->id}}" type="radio" name="{{$template->id}}" value="No" 
  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="No")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif



                             data-bs-original-title="" title="">
                            <label class="form-check-label" for="rad{{$template->id}}">No</label>
                          </div>
                        </div>
                      </div>
                 
                     
                    </div>

@endif

@endif

@endforeach
</div>                     
          
<!--  -->
<!-- step three -->

<div class="tab">
<h6 class="text-center">HUMAN RESOURCES</h6>

        @foreach($templates as $template)
                               
        @if($template->step==3)
       
@if($template->type=="text")
<div class="mb-3">
<label for="name">{{$template->name}}</label>
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="

@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif

" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
@endif

@if($template->type=="number")
<div class="mb-3">
<label for="name">{{$template->name}}</label>
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
@endif

@if($template->type=="textarea")
       <div class="row">
       <div class="col">
       <div class="mb-3">
      <label>{{$template->name}}</label>
<textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
</textarea>
</div>
</div>
</div>
@endif

@if($template->type=="checkbox")
<div class="mb-3">
<label for="name">{{$template->name}}</label>

@foreach(json_decode($template->options) as $k => $v)
<label class="d-block" for="chk-ani">
<input class="checkbox_animated" id="chk-ani"
   @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                          @foreach(json_decode($answer->name) as $k) 
                          @if($k==$v)
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          @endforeach
                          @endif

 name="{{$template->id}}[]" value="{{$v}}" type="checkbox" data-bs-original-title="" title="">{{$v}}
</label>
@endforeach 

</div>
@endif
@if($template->type=="radio")
<div class="row">
<div class="col-sm-12">
                        <label>{{$template->name}}</label>
                      </div>
                      <div class="col">
                        <div class="mb-3 m-t-15 custom-radio-ml">
                          <div class="form-check radio radio-success">
                            <input class="form-check-input" id="radio{{$template->id}}" type="radio" name="{{$template->id}}" value="Yes" 

  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="Yes")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif

                            data-bs-original-title="" title="">
                            <label class="form-check-label" for="radio{{$template->id}}">Yes</label>
                          </div>
                         
                          <div class="form-check radio radio-danger">
                            <input class="form-check-input" id="rad{{$template->id}}" type="radio" name="{{$template->id}}" value="No" 
  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="No")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif



                             data-bs-original-title="" title="">
                            <label class="form-check-label" for="rad{{$template->id}}">No</label>
                          </div>
                        </div>
                      </div>
                 
                     
                    </div>

@endif

@endif

@endforeach
</div> 

<!--  -->
<!-- step four-->

<div class="tab">
<h6 class="text-center">NETWORK</h6>
<div id="onyes"></div>
        @foreach($templates as $template)
                               
        @if($template->step==4)

     
       
@if($template->type=="text")
<div class="mb-3" id="myDIV{{$template->id}}" style="display: none;">
<label for="name">{{$template->name}}</label>
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="

@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif

" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
@endif

@if($template->type=="number")
<div class="mb-3"  id="myDIV{{$template->id}}" style="display: none;" >
<label for="name">{{$template->name}}</label>
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
@endif


                      @if($template->type=="file")
                        <div class="mb-3"  id="myDIV{{$template->id}}" style="display: none;">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="file" placeholder=""   name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif


@if($template->type=="textarea")
       <div class="row"  id="myDIV{{$template->id}}" style="display: none;">
       <div class="col">
       <div class="mb-3">
      <label>{{$template->name}}</label>
<textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
</textarea>
</div>
</div>
</div>
@endif

@if($template->type=="checkbox")
<div class="mb-3 opt"  id="myDIV{{$template->id}}" style="display: none;">
<label for="name">{{$template->name}}</label>

@foreach(json_decode($template->options) as $k => $v)
<label class="d-block" for="chk-ani">
<input class="checkbox_animated" id="chk-ani"
   @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                          @foreach(json_decode($answer->name) as $k) 
                          @if($k==$v)
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          @endforeach
                          @endif

 name="{{$template->id}}[]" value="{{$v}}" type="checkbox" data-bs-original-title="" title="">{{$v}}
</label>
@endforeach 

</div>
@endif
@if($template->type=="radio" && $template->surveyid=="optional")
<div class="row"  id="myDIV{{$template->id}}" style="display: none;">
<div class="col-sm-12">
                        <label>{{$template->name}}</label>
                      </div>
                      <div class="col">
                        <div class="mb-3 m-t-15 custom-radio-ml">
                          <div class="form-check radio radio-success">
                            <input class="form-check-input" id="radio{{$template->id}}" type="radio" name="{{$template->id}}" value="Yes" 

  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="Yes")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif

                            data-bs-original-title="" title="">
                            <label class="form-check-label" for="radio{{$template->id}}">Yes</label>
                          </div>
                         
                          <div class="form-check radio radio-danger">
                            <input class="form-check-input" id="rad{{$template->id}}" type="radio" name="{{$template->id}}" value="No" 
  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="No")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif



                             data-bs-original-title="" title="">
                            <label class="form-check-label" for="rad{{$template->id}}">No</label>
                          </div>
                        </div>
                      </div>
                 
                     
                    </div>

@endif
@if($template->id==27 && $template->type=="radio" )
<div class="row">
<div class="col-sm-12">
                        <label>{{$template->name}}</label>
                      </div>
                      <div class="col">
                        <div class="mb-3 m-t-15 custom-radio-ml">
                          <div class="form-check radio radio-success">
                            <input class="form-check-input" onclick="myFunction()" id="radio{{$template->id}}" type="radio" name="{{$template->id}}" value="Yes" 

  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="Yes")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif

                            data-bs-original-title="" title="">
                            <label class="form-check-label" for="radio{{$template->id}}">Yes</label>
                          </div>
                         
                          <div class="form-check radio radio-danger">
                            <input class="form-check-input" onclick="myFunctiontwo()"id="rad{{$template->id}}" type="radio" name="{{$template->id}}" value="No" 
  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="No")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif



                             data-bs-original-title="" title="">
                            <label class="form-check-label" for="rad{{$template->id}}">No</label>
                          </div>
                        </div>
                      </div>
                 
                     
                    </div>

@endif

@endif

@endforeach
</div> 

<!--  -->
<!-- step five -->

<div class="tab">
<h6 class="text-center">SERVICES</h6>

        @foreach($templates as $template)
                               
        @if($template->step==5)
       
@if($template->type=="text" && $template->id!=53)
<div class="mb-3">
<label for="name">{{$template->name}}</label>
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="

@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif

" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
@endif

@if($template->id==51 && $template->type=="number")
                      <label>eduroam</label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
                            </div>
                          </div>
                  
@endif
@if($template->id==52 && $template->type=="number")
                     
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
                            </div>
                          </div>
                  
@endif

@if($template->id==53 && $template->type=="text")
                      <label>ID Federation:</label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                            <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="

@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif

" name="{{$template->id}}" data-bs-original-title="" title="">
                            </div>
                          </div>
                  
@endif



@if($template->id==54 && $template->type=="number")
                   
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
                            </div>
                          </div>
                  
@endif
@if($template->id==55 && $template->type=="number")
                     
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
                            </div>
                          </div>
                  
@endif




@if($template->type=="textarea")
       <div class="row">
       <div class="col">
       <div class="mb-3">
      <label>{{$template->name}}</label>
<textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
</textarea>
</div>
</div>
</div>
@endif

@if($template->type=="checkbox")
<div class="mb-3">
<label for="name">{{$template->name}}</label>

@foreach(json_decode($template->options) as $k => $v)
<label class="d-block" for="chk-ani">
<input class="checkbox_animated" id="chk-ani"
   @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                          @foreach(json_decode($answer->name) as $k) 
                          @if($k==$v)
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          @endforeach
                          @endif

 name="{{$template->id}}[]" value="{{$v}}" type="checkbox" data-bs-original-title="" title="">{{$v}}
</label>
@endforeach 

</div>
@endif
@if($template->type=="radio")
<div class="row">
<div class="col-sm-12">
                        <label>{{$template->name}}</label>
                      </div>
                      <div class="col">
                        <div class="mb-3 m-t-15 custom-radio-ml">
                          <div class="form-check radio radio-success">
                            <input class="form-check-input" id="radio{{$template->id}}" type="radio" name="{{$template->id}}" value="Yes" 

  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="Yes")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif

                            data-bs-original-title="" title="">
                            <label class="form-check-label" for="radio{{$template->id}}">Yes</label>
                          </div>
                         
                          <div class="form-check radio radio-danger">
                            <input class="form-check-input" id="rad{{$template->id}}" type="radio" name="{{$template->id}}" value="No" 
  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="No")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif



                             data-bs-original-title="" title="">
                            <label class="form-check-label" for="rad{{$template->id}}">No</label>
                          </div>
                        </div>
                      </div>
                 
                     
                    </div>

@endif

@endif

@endforeach
</div> 

<!--  -->
<!-- step six -->

<div class="tab">
<h6 class="text-center">BUSINESS ENVIRONMENT AND PLANNING</h6>

        @foreach($templates as $template)
                               
        @if($template->step==6)
       
@if($template->type=="text" && $template->id!=80)
<div class="mb-3">
<label for="name">{{$template->name}}</label>
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="

@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif

" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
@endif

@if($template->type=="number" && $template->id!=89 && $template->id!==90)
<div class="mb-3">
<label for="name">{{$template->name}}</label>
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
@endif


@if($template->type=="textarea" && $template->id!=81 && $template->id!=82)
       <div class="row">
       <div class="col">
       <div class="mb-3">
      <label>{{$template->name}}</label>
<textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
</textarea>
</div>
</div>
</div>
@endif


  @if($template->id==80)
                      <label>1. Is national telecom market:</label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="

@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif

" name="{{$template->id}}" data-bs-original-title="" title="">
                            </div>
                          </div>
                  
                     @endif
                       @if($template->id==81)
                 
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
</textarea>
                            </div>
                          </div>
                  
                     @endif
                       @if($template->id==82)
                      
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif
</textarea>
                            </div>
                          </div>
                  
                     @endif
@if($template->id==85)
                      <label>3. Provide brief information on your business model:</label>
                  
                    
                     @endif

  @if($template->id==89)
                      <label>4. For the current year, what is your:</label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                         <input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
                            </div>
                          </div>
                  
                     @endif
                       @if($template->id==90)
                 
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                  <input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
                            </div>
                          </div>
                  
                     @endif



@if($template->type=="checkbox")
<div class="mb-3">
<label for="name">{{$template->name}}</label>

@foreach(json_decode($template->options) as $k => $v)
<label class="d-block" for="chk-ani">
<input class="checkbox_animated" id="chk-ani"
   @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                          @foreach(json_decode($answer->name) as $k) 
                          @if($k==$v)
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          @endforeach
                          @endif

 name="{{$template->id}}[]" value="{{$v}}" type="checkbox" data-bs-original-title="" title="">{{$v}}
</label>
@endforeach 

</div>
@endif
@if($template->type=="radio")
<div class="row">
<div class="col-sm-12">
                        <label>{{$template->name}}</label>
                      </div>
                      <div class="col">
                        <div class="mb-3 m-t-15 custom-radio-ml">
                          <div class="form-check radio radio-success">
                            <input class="form-check-input" id="radio{{$template->id}}" type="radio" name="{{$template->id}}" value="Yes" 

  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="Yes")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif

                            data-bs-original-title="" title="">
                            <label class="form-check-label" for="radio{{$template->id}}">Yes</label>
                          </div>
                         
                          <div class="form-check radio radio-danger">
                            <input class="form-check-input" id="rad{{$template->id}}" type="radio" name="{{$template->id}}" value="No" 
  @if($answers)
   @foreach($answers as $answer)
   @if($template->id==$answer->questionid)
                        
                          @if($answer->name=="No")
                          checked=""
                          @endif
                       
                          @endif
                          @endforeach
                          @endif



                             data-bs-original-title="" title="">
                            <label class="form-check-label" for="rad{{$template->id}}">No</label>
                          </div>
                        </div>
                      </div>
                 
                     
                    </div>

@endif

@endif

@endforeach
</div> 

<!--  -->
<!-- step 2 -->
<div class="tab">
<h6 class="text-center">IMPACT</h6>

  

<!-- table -->
<div class="table-responsive">
                        <table class="table table-bordered">
                          <thead class="bg-primary">
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">Estimated number in the country</th>
                              <th scope="col">Estimate total students and staff</th>
                              <th scope="col">Number of institutions that are members</th>
                                <th scope="col">Number of institutions connected</th>
                              <th scope="col">Average bandwidth (in Mbps) per institution</th>
                              <th scope="col">Number of students and staff connected</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">Colleges and universities</th>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="93" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==93)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="96" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==96)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="97" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==97)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="98" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==98)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="99" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==99)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="100" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==100)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                            </tr>
                            <tr>
                              <th scope="row">Research Institutes</th>
                               <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="101" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==101)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="102" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==102)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="103" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==103)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="104" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==104)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="105" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==105)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="106" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==106)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                  
                             
                            </tr>
                             <tr>
                              <th scope="row">Technical and Vocational Education and Training Centres</th>
                               <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="107" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==107)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="108" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==108)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="109" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==109)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="110" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==110)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="111" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==111)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="112" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==112)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                  
                             
                            </tr>
                           
<tr>
                              <th scope="row">Secondary Schools</th>
                               <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="113" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==113)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="114" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==114)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="115" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==115)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="116" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==116)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="117" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==117)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="118" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==118)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Primary school</th>
                               <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="119" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==119)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="120" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==120)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="121" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==121)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="122" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==122)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="123" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==123)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="124" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==124)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Libraries, museums, national archives</th>
                               <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="125" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==125)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="126" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==126)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="127" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==127)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="128" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==128)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="129" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==129)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="130" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==130)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Hospitals (other than teaching/ university hospitals)</th>
                               <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="131" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==131)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="132" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==132)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="133" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==133)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="134" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==134)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="135" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==135)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="136" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==136)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Government departments (national, regional, local)</th>
                               <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="137" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==137)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="138" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==138)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="139" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==139)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="140" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==140)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="141" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==141)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="142" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==142)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">For-profit organizations</th>
                               <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="143" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==143)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="144" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==144)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="145" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==145)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="146" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==146)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="147" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==147)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                              <td><input class="form-control invalid invalid invalid invalid invalid" id="name" type="number" placeholder=""name="148" data-bs-original-title="" value="@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==148)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" ></td>
                  
                             
                            </tr>

                          </tbody>
                        </table>
                      </div>




</div>



                      <div>
                      
                        <?php if(responseReady(Auth::id())=='yes' && $ss=='running'){
                        
  echo ' <div class="text-end btn-mb">
                       <button class="btn btn-secondary" id="prevBtn" type="button" onclick="nextPrev(-1)" style="display: none;" data-bs-original-title="" title="">Previous</button>
                          <button class="btn btn-primary" id="nextBtn" type="button" onclick="nextPrev(1)" data-bs-original-title="" title="">Next</button>
                            <button class="btn btn-warning" id="" type="submit"  value="save" name ="save" data-bs-original-title="" title="">Save</button>
                        </div>';

}?>
                   
                      </div>
                      <!-- Circles which indicates the steps of the form:-->
                      <div class="text-center"><span class="step active"></span><span class="step"></span><span class="step"></span><span class="step"></span><span class="step"></span><span class="step"></span><span class="step"></span></div>
                      <!-- Circles which indicates the steps of the form:-->
                      <!-- Container-fluid Ends-->
                    </form>
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
    @include('admin.layouts.modules.dashboard.scripts')
    <script>
"use strict";
var currentTab = 0; 
showTab(currentTab);
function showTab(n) {
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) { 
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  fixStepIndicator(n)
}
function nextPrev(n) {
  var x = document.getElementsByClassName("tab");
  if (n == 1 && !validateForm()) return false;
  x[currentTab].style.display = "none";
  currentTab = currentTab + n;
  if (currentTab >= x.length) {
    document.getElementById("regForm").submit();
    return false;
  }
  showTab(currentTab);
}
function validateForm() {
  var x, y, i, valid = true;
  // x = document.getElementsByClassName("tab");
  // y = x[currentTab].getElementsByTagName("input");
  // for (i = 0; i < y.length; i++) {
  //   if (y[i].value == "") {
  //     y[i].className += " invalid";
  //     valid = false;
  //   }
  // }
  // if (valid) {
  //   document.getElementsByClassName("step")[currentTab].className += " finish";
  // }
  return valid;
}
function fixStepIndicator(n) {
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  x[n].className += " active";
}
function myFunction() {
var a = document.getElementById("myDIV28");
  a.style.display = "block";
  var b = document.getElementById("myDIV29");
  b.style.display = "block";

  var x = document.getElementById("myDIV31");
  x.style.display = "block";
  var x = document.getElementById("myDIV32");
  x.style.display = "block";
  var x = document.getElementById("myDIV33");
  x.style.display = "block";
  var x = document.getElementById("myDIV34");
  x.style.display = "block";
  var x = document.getElementById("myDIV35");
  x.style.display = "block";
  var x = document.getElementById("myDIV36");
  x.style.display = "block";
  var x = document.getElementById("myDIV37");
  x.style.display = "block";
  var x = document.getElementById("myDIV38");
  x.style.display = "block";
  var x = document.getElementById("myDIV39");
  x.style.display = "block";
  var x = document.getElementById("myDIV40");
  x.style.display = "block";
  var x = document.getElementById("myDIV41");
  x.style.display = "block";
  var x = document.getElementById("myDIV42");
  x.style.display = "block";
  var x = document.getElementById("myDIV43");
  x.style.display = "block";
  var x = document.getElementById("myDIV44");
  x.style.display = "block";
  var x = document.getElementById("myDIV45");
  x.style.display = "block";
  var x = document.getElementById("myDIV46");
  x.style.display = "block";
  var x = document.getElementById("myDIV47");
  x.style.display = "block";
  var x = document.getElementById("myDIV48");
  x.style.display = "block";
    
  
}
function myFunctiontwo() {
var x = document.getElementById("myDIV28");
  x.style.display = "none";
  var x = document.getElementById("myDIV29");
  x.style.display = "none";
 
  var x = document.getElementById("myDIV31");
  x.style.display = "none";
  var x = document.getElementById("myDIV32");
  x.style.display = "none";
  var x = document.getElementById("myDIV33");
  x.style.display = "none";
  var x = document.getElementById("myDIV34");
  x.style.display = "none";
  var x = document.getElementById("myDIV35");
  x.style.display = "none";
  var x = document.getElementById("myDIV36");
  x.style.display = "none";
  var x = document.getElementById("myDIV37");
  x.style.display = "none";
  var x = document.getElementById("myDIV38");
  x.style.display = "none";
  var x = document.getElementById("myDIV39");
  x.style.display = "none";
  var x = document.getElementById("myDIV40");
  x.style.display = "none";
  var x = document.getElementById("myDIV41");
  x.style.display = "none";
  var x = document.getElementById("myDIV42");
  x.style.display = "none";
  var x = document.getElementById("myDIV43");
  x.style.display = "none";
  var x = document.getElementById("myDIV44");
  x.style.display = "none";
  var x = document.getElementById("myDIV45");
  x.style.display = "none";
  var x = document.getElementById("myDIV46");
  x.style.display = "none";
  var x = document.getElementById("myDIV47");
  x.style.display = "none";
  var x = document.getElementById("myDIV48");
  x.style.display = "none";
 
}
    </script>
@endsection
