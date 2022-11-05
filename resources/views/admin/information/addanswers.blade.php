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

<select class="form-control" name="load">
<option value="saved" >Saved data</option>
@foreach($surveys as $survey)
<option value="{{$survey->id}}">{{$survey->year}}</option>
@endforeach
</select>
<button class="btn btn-primary"  type="submit" data-bs-original-title="" title="">Load Data</button>
</form>
</div>
</div>
                    
                    <h5></h5>
                   
                    <div class="card-body">
                    <form class="form-wizard" id="regForm" action="/respond" method="POST" enctype="multipart/form-data" >
                      
                  
                    <br>
                      @csrf
                      @foreach($surveys as $survey)
                      <input type="hidden" name="surveyid" value="{{$survey->id}}">
                      @endforeach
                      <!-- step 1 -->
                      <div class="tab" style="display: block;">
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
                
                      @endif
                   
                      @endforeach
                      </div>
                      <!--  -->
                      <!-- step 2 -->
                      <div class="tab">
                      @foreach($templates as $template)
                      @if($template->step==2)
                      @if($template->type=="text")
                      @if($template->options=="group")
                     
                      <div class="row">
                    
                      @if($template->id==14)
                      <label><b>Staff (number and roles)</b></label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)

@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
                  
                     @endif
                     @if($template->id==15)
                    
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)

@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif" >
                            </div>
                          </div>
                  
                     @endif
                  
                     @if($template->id==16)
                    
                  
                    <div class="mb-3 m-form__group">
                         
                          <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                            <input class="form-control" type="text" name="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)

@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif" >
                          </div>
                        </div>
                
                   @endif
                
                   @if($template->id==17)
                    
                  
                    <div class="mb-3 m-form__group">
                         
                          <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                            <input class="form-control" type="text" name="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)

@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                          </div>
                        </div>
                
                   @endif
                
                  
                     
                 
                   </div>
                      @else
                      <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder="" value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif" name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif
                      @endif
                      @if($template->type=="single")
                      @if($template->surveyid==1)

                      @if($template->id==18)
                      <label><b>Scope of NREN intervention</b></label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                            <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                            @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<option value="{{$answer->name}}">{{$answer->name}}</option>
@endif
@endforeach
@endif
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
                            </div>
                          </div>
                  
                     @endif
                     @if($template->id==19)
                      
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                            <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                            @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<option value="{{$answer->name}}">{{$answer->name}}</option>
@endif
@endforeach
@endif
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
                            </div>
                          </div>
                  
                     @endif
                     @if($template->id==20)
                 
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                            <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                            @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<option value="{{$answer->name}}">{{$answer->name}}</option>
@endif
@endforeach
@endif
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
                            </div>
                          </div>
                  
                     @endif
                      @else
                      
                      <div class="mb-3">
                      <label for="name">{{$template->name}}</label>
                      <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
</div>
                      @endif
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
                      @if($template->type=="date")
                        <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="date" placeholder="" value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif"  name="{{$template->id}}" value="yes" data-bs-original-title="" title="">
                        </div>
                      @endif

                      @endif
                      @endforeach
                      </div>
           




                      <div class="tab">
                      @foreach($templates as $template)
                      @if($template->step==3)
                      @if($template->type=="text")
                      @if($template->surveyid==2)
                     
                      <div class="row">
                    
                      @if($template->id==25)
                      <label><b>Tell us about your 2022 Budget in US dollars</b></label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif" >
                            </div>
                          </div>
                  
                     @endif
                     @if($template->id==26)
                    
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif" >
                            </div>
                          </div>
                  
                     @endif
                  
                 
                
                  
                     
                 
                   </div>
                      @else
                      <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif"  name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif
                      @endif
                      @if($template->type=="single")
                      @if($template->surveyid==1)

                      @else
                      
                      <div class="mb-3">
                      <label for="name">{{$template->name}}</label>
                      <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
</div>
                      @endif
                      @endif


                      @if($template->type=="textarea")
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>{{$template->name}}</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif</textarea>
                          </div>
                        </div>
                      </div>
                      @endif
                   

                      @endif
                      @endforeach
                      </div>
           



<!-- step four -->

<div class="tab">
                      @foreach($templates as $template)
                      @if($template->step==4)
                      @if($template->type=="text")
                      @if($template->surveyid==3)
                     
                      <div class="row">
                    
                      @if($template->id==30)
                      <label><b>Institutes of higher education/ universities</b></label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
                  
                     @endif
                     @if($template->id==31)
                    
                  
                     <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
                  
                     @endif
                  
                     @if($template->id==32)
                    
                     <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                
                   @if($template->id==33)
                    
                  
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==34)
                    
                  
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==35)
                    
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                
                  
                     
                 
                   </div>




                   
                   <div class="row">
                    
                    @if($template->id==36)
                    <label><b>Research institutes</b></label>
                
                    <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==37)
                  
                
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                
                   @if($template->id==38)
                  
                
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
              
                 @if($template->id==39)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==40)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==41)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
              
                
                   
               
                 </div>
                 @if($template->id==42)
                    <label><b>Vocational education and training centers</b></label>
                
                    <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==43)
                  
                
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                
                   @if($template->id==44)
                  
                   <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
              
                 @endif
              
                 @if($template->id==45)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==46)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==47)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
              

                 @if($template->id==60)
                    <label><b>Libraries, museums, national archives</b></label>
                
                    <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==61)
                  
                
                   <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
                
                   @endif
                
                   @if($template->id==62)
                  
                
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
              
                 @if($template->id==63)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==64)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==65)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif

                 @if($template->id==72)
                    <label><b>Government departments (national, regional, local)</b></label>
                
               
                    <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
                   @endif
                   @if($template->id==73)
                  
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                
                   @endif
                
                   @if($template->id==74)
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
             
                 @endif
              
                 @if($template->id==75)
                  
                
                 <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
              
                 @endif
                 @if($template->id==76)
                  
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
             
              
                 @endif
                 @if($template->id==77)
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
  
              
                 @endif
                 @if($template->id==66)
                    <label><b>Hospitals (other than teaching/ university hospitals)</b></label>
                
                    <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==67)
                  
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
        
                   @endif
                
                   @if($template->id==68)
                  
                
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
              
                 @if($template->id==69)
                  
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
             
              
                 @endif
                 @if($template->id==70)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==71)
                  
                
                 <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
              
                 @endif
                 @if($template->id==48)
                    <label><b>Secondary school</b></label>
                
                    <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==49)
                  
                
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                
                   @if($template->id==50)
                  
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
              
                 @if($template->id==51)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==52)
                  
                
                 <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
                 @endif
                 @if($template->id==53)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif

                 @if($template->id==54)
                    <label><b>Primary school</b></label>
                
                    <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==55)
                  
                   <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div> 
                
                
                   @endif
                
                   @if($template->id==56)
                  
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
              
                 @endif
              
                 @if($template->id==57)
                  
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
        
              
                 @endif
                 @if($template->id==58)
                  
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
            
              
                 @endif
                 @if($template->id==59)
                  
                
                 <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
              
                 @endif
                 @if($template->id==78)
                    <label><b>For-profit organizations</b></label>
                
                    <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                   @if($template->id==79)
                  
                
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                
                   @if($template->id==80)
                  
                
                   <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
              
                 @if($template->id==81)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==82)
                  
                
                 <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
              
                 @endif
                 @if($template->id==83)
                  
                 <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}"value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
              
                 @endif


                 
                      @else
                      <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif"  name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif
                      @endif
                      @if($template->type=="single")
                      @if($template->surveyid==4)

                   
                  
                     @if($template->id==20)
                 
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                            <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
                            </div>
                          </div>
                  
                     @endif
                      @else
                      
                      <div class="mb-3">
                      <label for="name">{{$template->name}}</label>
                      <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                      @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<option value="{{$answer->name}}">{{$answer->name}}</option>
@endif
@endforeach
@endif
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
</div>
                      @endif
                      @endif


                      @if($template->type=="textarea")
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>{{$template->name}}</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" >@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif</textarea>
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
                      @foreach($templates as $template)
                      @if($template->step==5)
                      @if($template->type=="text")
                      @if($template->surveyid==5)
                     
                      <div class="row">
                    
                      @if($template->id==92)
                      <label><b>National network infrastructure</b></label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                            </div>
                          </div>
                  
                     @endif
                     @if($template->id==93)
                    
                     <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                  
                     @endif
                     @if($template->id==94)
                    
                     <div class="mb-3 m-form__group">
                           
                           <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                             <input class="form-control" type="text" name="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                           </div>
                         </div>
                
                   @endif
                 
                
                  
                     
                 
                   </div>
                      @else
                      <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif"  name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                        
                      @endif
                      @endif
                      @if($template->type=="single")
                      @if($template->surveyid==5)

                      @else
                      
                      <div class="mb-3">
                      <label for="name">{{$template->name}}</label>
                      <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                      @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<option value="{{$answer->name}}">{{$answer->name}}</option>
@endif
@endforeach
@endif
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
</div>
                      @endif
                      @endif


                      @if($template->type=="textarea")
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>{{$template->name}}</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" >@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif</textarea>
                          </div>
                        </div>
                      </div>
                      @endif
                 
                      @if($template->type=="file")
                        <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="file" placeholder=""   name="file">
                        </div>
                      @endif

                      @endif
                      @endforeach
                      </div>
           
<!--  -->


<!-- step six -->
<div class="tab">
                      @foreach($templates as $template)
                      @if($template->step==6)
                      @if($template->type=="text")
                      @if($template->surveyid==5)
                     
                      <div class="row">
                   
                     @if($template->id==94)
                    
                  
                    <div class="mb-3 m-form__group">
                         
                          <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                            <input class="form-control" type="text" name="{{$template->id}}" value="1" >
                          </div>
                        </div>
                
                   @endif
                 
                
                  
                     
                 
                   </div>
                      @else
                      <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif"  name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif
                      @endif
                      @if($template->type=="single")
                      @if($template->surveyid==1)

                      @else
                      
                      <div class="mb-3">
                      <label for="name">{{$template->name}}</label>
                      <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                      @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<option value="{{$answer->name}}">{{$answer->name}}</option>
@endif
@endforeach
@endif
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
</div>
                      @endif
                      @endif


                      @if($template->type=="textarea")
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>{{$template->name}}</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}">@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif</textarea>
                          </div>
                        </div>
                      </div>
                      @endif
                  

                      @endif
                      @endforeach
                      </div>
           
                  

<!--  -->

<!-- step seven -->
<div class="tab">
                      @foreach($templates as $template)
                      @if($template->step==7)
                      @if($template->type=="text")
                      @if($template->surveyid==5)
                     
                      <div class="row">
                    
                      @if($template->id==92)
                      <label><b>National network infrastructure</b></label>
                  
                      <div class="mb-3 m-form__group">
                           
                            <div class="input-group"><span class="input-group-text">{{$template->name}}</span>
                              <input class="form-control" type="text" name="{{$template->id}}" value="1"  >
                            </div>
                          </div>
                  
                     @endif
                   
                 
                
                  
                     
                 
                   </div>
                      @else
                      <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif"  name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif
                      @endif
                      @if($template->type=="single")
                      @if($template->surveyid==1)

                      @else
                      
                      <div class="mb-3">
                      <label for="name">{{$template->name}}</label>
                      <select class="form-select digits" id="exampleFormControlSelect9" name="{{$template->id}}">
                      @if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
<option value="{{$answer->name}}">{{$answer->name}}</option>
@endif
@endforeach
@endif
                      @foreach(json_decode($template->options) as $k => $v)
                              <option value="{{$v}}">{{$v}}</option>
                      @endforeach  
                            </select>
</div>
                      @endif
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
@endif</textarea>
                          </div>
                        </div>
                      </div>
                      @endif
                      @if($template->type=="url")
                      <div class="row">
                        <div class="col">
                          <div class="mb-3">
                            <label>{{$template->name}}</label>
                            <input class="form-control" type="text" id="exampleFormControlTextarea4" rows="3" name ="{{$template->id}}" value="@if($answers)
@foreach($answers as $answer)
@if($template->id==$answer->questionid)
{{$answer->name}}
@endif
@endforeach
@endif">
                          </div>
                        </div>
                      </div>
                      @endif
                      @if($template->type=="date")
                        <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="text" placeholder=""  value="1" name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif
                      <!-- @if($template->type=="file")
                        <div class="mb-3">
                          <label for="name">{{$template->name}}</label>
                          <input class="form-control invalid invalid invalid invalid invalid" id="name" type="file" placeholder=""   name="{{$template->id}}" data-bs-original-title="" title="">
                        </div>
                      @endif -->

                      @endif
                      @endforeach
                      </div>
           

<!--  -->
<!-- step 8 -->
<div class="tab">
                      @foreach($templates as $template)
                      @if($template->step==8)
            

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
@endif</textarea>
                          </div>
                        </div>
                      </div>
                      @endif
                      

                      @endif
                      @endforeach
                      </div>
<!--  -->
                      <div>
                        <div class="text-end btn-mb">
                        <button class="btn btn-warning" id="" type="submit"  value="save" name ="save" data-bs-original-title="" title="">Save</button>
                          <button class="btn btn-secondary" id="prevBtn" type="button" onclick="nextPrev(-1)" style="display: none;" data-bs-original-title="" title="">Previous</button>
                          <button class="btn btn-primary" id="nextBtn" type="button" onclick="nextPrev(1)" data-bs-original-title="" title="">Next</button>
                        </div>
                      </div>
                      <!-- Circles which indicates the steps of the form:-->
                      <div class="text-center"><span class="step active"></span><span class="step"></span><span class="step"></span><span class="step"></span><span class="step"></span><span class="step"></span><span class="step"></span><span class="step"></span></div>
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
    </script>
@endsection
