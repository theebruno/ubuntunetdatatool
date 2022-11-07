@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid" >
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
    <div class="container-fluid" >
    <div class="col-sm-12">
                <div class="card" >
                  <div class="card-header">
                    <div class="pull-right">
                    <button id="clickbind" type="button" class="btn btn-success "><i class="fa fa-print"></i></button>
                  </div>
               
                  </div>
                  <div class="card-body" id="content" >
                       @foreach ($surveys as $survey)
                    <h4 class="mb-3 text-center"><u>{{$survey->year}} by 
                      @foreach($nrenusers as $nrenuser)
                      @foreach($nrens as $nren)
                      @if($nrenuser->nrenid==$nren->id)
                      {{$nren->nren}}
                      <?php $name=$survey->year."for".$nren->nren;?>
                      @endif
                      @endforeach
                      @endforeach
                    </u>
                    </h4>
                  <!-- step one -->
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

                       <!--  -->
                      @endforeach
                 @endforeach



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

        @foreach($templates as $template)
                               
        @if($template->step==4)

     
       
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
<div class="mb-3" >
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
                        <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="file" placeholder=""   name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif


@if($template->type=="textarea")
       <div class="row" >
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
<div class="mb-3 opt" >
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
<div class="html2pdf__page-break"></div>
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
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==93)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==96)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==97)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==98)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==99)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==100)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                            </tr>
                            <tr>
                              <th scope="row">Research Institutes</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==101)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==102)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==103)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==104)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==105)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==106)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                             <tr>
                              <th scope="row">Technical and Vocational Education and Training Centres</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==107)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==108)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==109)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==110)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==111)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==112)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                           
<tr>
                              <th scope="row">Secondary Schools</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==113)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==114)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==115)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==116)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==117)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==106)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Primary school</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==119)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==120)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==121)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==122)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==123)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==124)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Libraries, museums, national archives</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==125)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==126)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==127)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==128)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==129)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==130)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Hospitals (other than teaching/ university hospitals)</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==131)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==132)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==133)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==134)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==135)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==136)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Government departments (national, regional, local)</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==137)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==138)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==139)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==140)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==141)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==142)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">For-profit organizations</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==143)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==144)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td><@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==145)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==146)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==147)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==148)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>

                          </tbody>
                        </table>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>


    <script type="text/javascript">
      function onClick() {
    // Choose the element that our invoice is rendered in.
        const element = document.getElementById('content');
        var opt = {
  margin:       0,
  filename:     '<?php 

if(isset($name)){
echo $name;
}
else{
echo "noresponse"; 
}
  ?>.pdf',
  image:        { type: 'jpeg', quality: 1 },
  html2canvas:  { scale: 2 },
  jsPDF:        { unit: 'in', format: 'letter', orientation: 'landscape' }
};

// New Promise-based usage:
html2pdf().set(opt).from(element).save();
             }

var element = document.getElementById("clickbind");
element.addEventListener("click", onClick);


    </script>
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
