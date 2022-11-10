<!DOCTYPE html>
<html>
<head>
</head>
<body>
 <style type="text/css">
/*!
 * Bootstrap Reboot v5.0.0-beta1 (https://getbootstrap.com/)
 * Copyright 2011-2020 The Bootstrap Authors
 * Copyright 2011-2020 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/main/LICENSE)
 * Forked from Normalize.css, licensed MIT (https://github.com/necolas/normalize.css/blob/master/LICENSE.md)
 */*,*::before,*::after{-webkit-box-sizing:border-box;box-sizing:border-box}@media (prefers-reduced-motion: no-preference){:root{scroll-behavior:smooth}}body{margin:0;font-family:system-ui,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans","Liberation Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";font-size:1rem;font-weight:400;line-height:1.5;color:#212529;background-color:#fff;-webkit-text-size-adjust:100%;-webkit-tap-highlight-color:rgba(0,0,0,0)}[tabindex="-1"]:focus:not(:focus-visible){outline:0 !important}hr{margin:1rem 0;color:inherit;background-color:currentColor;border:0;opacity:.25}hr:not([size]){height:1px}h1,.h1,h2,.h2,h3,.h3,h4,.h4,h5,.h5,h6,.h6{margin-top:0;margin-bottom:.5rem;font-weight:500;line-height:1.2}h1,.h1{font-size:calc(1.375rem + 1.5vw)}@media (min-width: 1200px){h1,.h1{font-size:2.5rem}}h2,.h2{font-size:calc(1.325rem + .9vw)}@media (min-width: 1200px){h2,.h2{font-size:2rem}}h3,.h3{font-size:calc(1.3rem + .6vw)}@media (min-width: 1200px){h3,.h3{font-size:1.75rem}}h4,.h4{font-size:calc(1.275rem + .3vw)}@media (min-width: 1200px){h4,.h4{font-size:1.5rem}}h5,.h5{font-size:1.25rem}h6,.h6{font-size:1rem}p{margin-top:0;margin-bottom:1rem}abbr[title],abbr[data-bs-original-title]{text-decoration:underline;-webkit-text-decoration:underline dotted;text-decoration:underline dotted;cursor:help;-webkit-text-decoration-skip-ink:none;text-decoration-skip-ink:none}address{margin-bottom:1rem;font-style:normal;line-height:inherit}ol,ul{padding-left:2rem}ol,ul,dl{margin-top:0;margin-bottom:1rem}ol ol,ul ul,ol ul,ul ol{margin-bottom:0}dt{font-weight:700}dd{margin-bottom:.5rem;margin-left:0}blockquote{margin:0 0 1rem}b,strong{font-weight:bolder}small,.small{font-size:.875em}mark,.mark{padding:.2em;background-color:#fcf8e3}sub,sup{position:relative;font-size:.75em;line-height:0;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}a{color:#0d6efd;text-decoration:underline}a:hover{color:#0a58ca}a:not([href]):not([class]),a:not([href]):not([class]):hover{color:inherit;text-decoration:none}pre,code,kbd,samp{font-family:SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;font-size:1em;direction:ltr /* rtl:ignore */;unicode-bidi:bidi-override}pre{display:block;margin-top:0;margin-bottom:1rem;overflow:auto;font-size:.875em}pre code{font-size:inherit;color:inherit;word-break:normal}code{font-size:.875em;color:#d63384;word-wrap:break-word}a>code{color:inherit}kbd{padding:.2rem .4rem;font-size:.875em;color:#fff;background-color:#212529;border-radius:.2rem}kbd kbd{padding:0;font-size:1em;font-weight:700}figure{margin:0 0 1rem}img,svg{vertical-align:middle}table{caption-side:bottom;border-collapse:collapse}caption{padding-top:.5rem;padding-bottom:.5rem;color:#6c757d;text-align:left}th{text-align:inherit;text-align:-webkit-match-parent}thead,tbody,tfoot,tr,td,th{border-color:inherit;border-style:solid;border-width:0}label{display:inline-block}button{border-radius:0}button:focus{outline:dotted 1px;outline:-webkit-focus-ring-color auto 5px}input,button,select,optgroup,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}button,select{text-transform:none}[role="button"]{cursor:pointer}select{word-wrap:normal}[list]::-webkit-calendar-picker-indicator{display:none}button,[type="button"],[type="reset"],[type="submit"]{-webkit-appearance:button}button:not(:disabled),[type="button"]:not(:disabled),[type="reset"]:not(:disabled),[type="submit"]:not(:disabled){cursor:pointer}::-moz-focus-inner{padding:0;border-style:none}textarea{resize:vertical}fieldset{min-width:0;padding:0;margin:0;border:0}legend{float:left;width:100%;padding:0;margin-bottom:.5rem;font-size:calc(1.275rem + .3vw);line-height:inherit}@media (min-width: 1200px){legend{font-size:1.5rem}}legend+*{clear:left}::-webkit-datetime-edit-fields-wrapper,::-webkit-datetime-edit-text,::-webkit-datetime-edit-minute,::-webkit-datetime-edit-hour-field,::-webkit-datetime-edit-day-field,::-webkit-datetime-edit-month-field,::-webkit-datetime-edit-year-field{padding:0}::-webkit-inner-spin-button{height:auto}[type="search"]{outline-offset:-2px;-webkit-appearance:textfield}::-webkit-search-decoration{-webkit-appearance:none}::-webkit-color-swatch-wrapper{padding:0}::file-selector-button{font:inherit}::-webkit-file-upload-button{font:inherit;-webkit-appearance:button}output{display:inline-block}iframe{border:0}summary{display:list-item;cursor:pointer}progress{vertical-align:baseline}[hidden]{display:none !important}


   
 </style>
<style type="text/css">
  table,th,td{
    border: 1px solid;
  }
</style>
<div class="col-sm-12"  id="content" >

        @foreach ($surveys as $survey)
                <div class="card" >
             <!--      <div class="card-header">
                    <div class="pull-right">
                    <button id="clickbind" type="button" class="btn btn-success "><i class="fa fa-print"></i></button>
                  </div>
               
                  </div> -->
                  <div class="card-body">
                   
                  <h1>{{$survey->year}} for {{$name}}</h1>
                     
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

@if($template->id==$answer->questionid && $answer->surveyid==$survey->id )
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
                        
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
@if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
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
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
                        
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
   @if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
                        
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
  </div>
@endif


                      @if($template->type=="file")
                        <div class="mb-3">
                          <label for="name">Network Topology Map</label>
                         <!--  <input class="form-control invalid invalid invalid invalid invalid" id="name" type="file" placeholder=""   name="{{$template->id}}" data-bs-original-title="" title=""> -->
                         <a  target="_blank" href="/info/@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif">
@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</a>
                        </div>
                      @endif


@if($template->type=="textarea")
       <div class="row" >
       <div class="col">
       <div class="mb-3">
      <label>{{$template->name}}</label>
<textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
                              <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
                              <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
                              <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
                              <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
<input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
@if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
                  
                      
                  
                          <div class="mb-3" >
            <div class="mb-3" >
<label for="name">{{$template->name}}: @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif </label>

</div>
                  
                     @endif
                       @if($template->id==90)
                 
                  
                    <div class="mb-3" >
<label for="name">{{$template->name}}: @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid  && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</label>

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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
   @if($template->id==$answer->questionid && $answer->surveyid==$survey->id)
                        
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
@if($answer->questionid==93 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==96 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==97 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==98 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==99 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==100 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                            </tr>
                            <tr>
                              <th scope="row">Research Institutes</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==101 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==102 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==103 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==104 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==105 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==106 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                             <tr>
                              <th scope="row">Technical and Vocational Education and Training Centres</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==107 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==108 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==109 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==110 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==111 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==112 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                           
<tr>
                              <th scope="row">Secondary Schools</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==113 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==114 && $answer->surveyid==$survey->id && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==115 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==116 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==117 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==118 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Primary school</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==119 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==120 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==121 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==122 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==123 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==124 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Libraries, museums, national archives</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==125 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==126 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==127 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==128 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==129 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==130 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Hospitals (other than teaching/ university hospitals)</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==131 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==132 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==133 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==134 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==135 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==136 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">Government departments (national, regional, local)</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==137 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==138 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==139 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==140 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==141 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==142 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                  
                             
                            </tr>
                            <tr>
                              <th scope="row">For-profit organizations</th>
                               <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==143 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==144 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==145 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==146 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==147 && $answer->surveyid==$survey->id)
<?php echo $answer->name;?>
@endif
@endforeach
@endif</td>
                              <td>@if($answers)
@foreach($answers as $answer)
@if($answer->questionid==148 && $answer->surveyid==$survey->id)
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
              <div class="html2pdf__page-break"></div>
                   @endforeach
              </div>
    </div>

</body>
</html>
    
 
    <!-- Container-fluid Ends-->



  
