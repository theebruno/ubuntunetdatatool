@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Add NREN</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><Source:media>NREN</Source:media></li>
                        <li class="breadcrumb-item active">Add </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
    <form method="post" action="/nren">
        @csrf
       
    <div class="col-sm-12">
                <div class="card">
                  <div class="card-body">
                    <div class="form theme-form">
                  
                    <div class="row">
                          <div class="mb-3">
                        <label class="form-label" for="country">Country</label>
                        <select class="form-control select2" wire:model.defer="country" name="country" id="country" style="width:100%">
                      
                            @if (isset($countries))
                            @foreach ($countries as $country_name)
                            <option value="{{ $country_name }}">
                                {{ $country_name }}</option>
                            @endforeach
                            @endif
                        </select>
                        @error('country') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                    <div class="mb-3">
                            <label> NREN</label>
                            <input class="form-control" type="text" required="" value="{{$profile->nren ?? '' }}" name="nren" placeholder=" eg.KENET" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> NETWORK NAME</label>
                            <input class="form-control" type="text" required="" value="{{$profile->networkname ?? '' }}"  name="networkname" placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Website URL</label>
                            <input class="form-control" type="text" required="" value="{{$profile->website ?? '' }}" name="website" placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Address</label>
                            <input class="form-control" type="text" required="" value="{{$profile->address ?? '' }}"  name="address" placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Gen. email</label>
                            <input class="form-control" type="email" required="" value="{{$profile->generalemail ?? '' }}"  name="generalemail" placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Tel</label>
                            <input class="form-control" type="text" required="" name="tel"value="{{$profile->tel ?? '' }}"   placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Fax</label>
                            <input class="form-control" type="text" required="" name="fax" value="{{$profile->fax ?? '' }}"  placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Year of creation</label>
                            <input class="form-control" type="year" required="" name="yearofcreation" value="{{$profile->yearofcreation ?? '' }}"  placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <br>
                          <div class="row">
                      <div class="col">
                      <label> Legal entity type </label>
                        <label class="d-block" for="chk-ani">
                          <input class="checkbox_animated" id="chk-ani" name="legalentitytype[]" value="not-for profit membership organisation" 
                         
                          type="checkbox" data-bs-original-title="" title="">not-for profit membership organisation
                        </label>
                        <label class="d-block" for="chk-ani1">
                          <input class="checkbox_animated" id="chk-ani1" name="legalentitytype[]" value="not-for-profit trust" type="checkbox" 
                          
                    
                          data-bs-original-title="" title="">not-for-profit trust
                        </label>
                        <label class="d-block" for="chk-ani2">
                          <input class="checkbox_animated" id="chk-ani2" name="legalentitytype[]" value="limited liability company" type="checkbox" 
                          
                 
                          data-bs-original-title="" title="">limited liability company
                        </label>
                        <label class="d-block" for="chk-ani3">
                          <input class="checkbox_animated" id="chk-ani3" name="legalentitytype[]" value="government entity"  type="checkbox"
                          
                       
                          data-bs-original-title="" title="">government entity
                        </label>
                        <label class="d-block" for="chk-ani3">
                          <input class="checkbox_animated" id="chk-ani3" name="legalentitytype[]" value="others" type="checkbox" 
                           
                         
                          
                          data-bs-original-title="" title="">others
                        </label>
                      </div>
                    </div>

                    <div class="row">
                        <div class="">
                          <div class="mb-3">
                            <label> Governance</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" name="governance" required="" rows="3" name ="details">{{$profile->governance ?? '' }}</textarea>
                          </div>
                        </div>
                      </div>


<br>

                    <div class="row">
                      <div class="col">
                      <label> Relationship with governemnt </label>
                        <label class="d-block" for="chk-ani">
                          <input class="checkbox_animated" id="chk-ani" name="relationshipwithgovernment[]" type="checkbox" value="none" 
                          
                          data-bs-original-title="" title="">none
                        </label>
                        <label class="d-block" for="chk-ani1">
                          <input class="checkbox_animated" id="chk-ani1" name="relationshipwithgovernment[]" value="Endorsed by Ministry of Education"
                       
                        
                           type="checkbox" data-bs-original-title="" title="">Endorsed by Ministry of Education
                        </label>
                        <label class="d-block" for="chk-ani2">
                          <input class="checkbox_animated" id="chk-ani2" name="relationshipwithgovernment[]" value="recognised by ICT Ministry" 
                       
                          type="checkbox" data-bs-original-title="" title="">recognised by ICT Ministry
                        </label>
                        <label class="d-block" for="chk-ani3">
                          <input class="checkbox_animated" id="chk-ani3" name="relationshipwithgovernment[]" value="part of Government Ministry, Department or Agency" type="checkbox" 
                        
                        
                          
                          data-bs-original-title="" title="">part of Government Ministry, Department or Agency
                        </label>
                        <label class="d-block" for="chk-ani3">
                          <input class="checkbox_animated" id="chk-ani3" type="checkbox" name="relationshipwithgovernment[]" value="others"
                        
                          data-bs-original-title="" title="">others
                        </label>
                      </div>
                    </div>
                </div>   
                   
                
                      </div>
                    
               
                      <div class="row">
                        <div class="col">
                          <div class="text-end"><button class="btn btn-success me-3" href="#" data-bs-original-title="" type="submit">Create</button><a class="btn btn-danger" href="#" data-bs-original-title="" title="">Cancel</a></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
    </form>
        
    </div>
    <!-- Container-fluid Ends-->
@endsection

@section('custom_js')
    @include('admin.layouts.modules.dashboard.scripts')
@endsection
