@extends('adminetic::admin.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h5> Edit My Account</h5>
                </div>
                <div class="card-body">
                    <ul class="nav nav-tabs" id="icon-tab" role="tablist">
                        <li class="nav-item"><a class="nav-link active" id="icon-home-tab" data-bs-toggle="tab"
                                href="#icon-home" role="tab" aria-controls="icon-home" aria-selected="true"
                                data-bs-original-title="" title=""><i class="icofont icofont-ui-home"></i>Account</a></li>
                        <li class="nav-item"><a class="nav-link" id="profile-icon-tab" data-bs-toggle="tab"
                                href="#profile-icon" role="tab" aria-controls="profile-icon" aria-selected="false"
                                data-bs-original-title="" title=""><i class="icofont icofont-man-in-glasses"></i>Profile</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" id="profile-icon-tab" data-bs-toggle="tab"
                                href="#nren" role="tab" aria-controls="profile-icon" aria-selected="false"
                                data-bs-original-title="" title=""><i class="fa fa-list-alt"></i>NREN</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="icon-tabContent">
                        <div class="tab-pane fade show active" id="icon-home" role="tabpanel"
                            aria-labelledby="icon-home-tab">
                            @livewire('admin.profile.edit-account', ['user' => $profile->user], key($profile->user->id))
                        </div>
                        <div class="tab-pane fade" id="profile-icon" role="tabpanel" aria-labelledby="profile-icon-tab">
                            @livewire('admin.profile.edit-profile', ['profile' => $profile], key($profile->id))
                        </div>
                        <div class="tab-pane fade" id="nren" role="tabpanel" aria-labelledby="profile-icon-tab">
<form method="post" action="/nren">
    @csrf
    <br>
    <input type="hidden" name="userid" value="{{$profile->user_id}}"/>

<div class="row">
                          <div class="mb-3">
                        <label class="form-label" for="country">Country</label>
                        <select class="form-control select2" wire:model.defer="country" name="country" id="country" style="width:100%">
                        <option value="{{ $profile->countryy }}">
                                {{ $profile->countryy}}</option>
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
                            <input class="form-control" type="text" required="" value="{{$profile->nren}}" name="nren" placeholder=" eg.KENET" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> NETWORK NAME</label>
                            <input class="form-control" type="text" required="" value="{{$profile->networkname}}"  name="networkname" placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Website URL</label>
                            <input class="form-control" type="text" required="" value="{{$profile->website}}" name="website" placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Address</label>
                            <input class="form-control" type="text" required="" value="{{$profile->addresss}}"  name="address" placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Gen. email</label>
                            <input class="form-control" type="email" required="" value="{{$profile->generalemail}}"  name="generalemail" placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Tel</label>
                            <input class="form-control" type="text" required="" name="tel"value="{{$profile->tel}}"   placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Fax</label>
                            <input class="form-control" type="text" required="" name="fax" value="{{$profile->fax}}"  placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <div class="mb-3">
                            <label> Year of creation</label>
                            <input class="form-control" type="year" required="" name="yearofcreation" value="{{$profile->yearofcreation}}"  placeholder="" data-bs-original-title="" title="" name="title">
                          </div>
                          <br>
                          <div class="row">
                      <div class="col">
                      <label> Legal entity type </label>
                        <label class="d-block" for="chk-ani">
                          <input class="checkbox_animated" id="chk-ani" name="legalentitytype[]" value="not-for profit membership organisation" 
                          @if($profile->legalentitytype)
                          @foreach(json_decode($profile->legalentitytype) as $k) 
                          @if($k=="not-for profit membership organisation")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          type="checkbox" data-bs-original-title="" title="">not-for profit membership organisation
                        </label>
                        <label class="d-block" for="chk-ani1">
                          <input class="checkbox_animated" id="chk-ani1" name="legalentitytype[]" value="not-for-profit trust" type="checkbox" 
                          
                          @if($profile->legalentitytype)
                          @foreach(json_decode($profile->legalentitytype) as $k) 
                          @if($k=="not-for-profit trust")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          
                          data-bs-original-title="" title="">not-for-profit trust
                        </label>
                        <label class="d-block" for="chk-ani2">
                          <input class="checkbox_animated" id="chk-ani2" name="legalentitytype[]" value="limited liability company" type="checkbox" 
                          
                          @if($profile->legalentitytype)
                          @foreach(json_decode($profile->legalentitytype) as $k) 
                          @if($k=="limited liability company")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          
                          data-bs-original-title="" title="">limited liability company
                        </label>
                        <label class="d-block" for="chk-ani3">
                          <input class="checkbox_animated" id="chk-ani3" name="legalentitytype[]" value="government entity"  type="checkbox"
                          
                          @if($profile->legalentitytype)
                          @foreach(json_decode($profile->legalentitytype) as $k) 
                          @if($k=="government entity")
                          checked=""
                          @endif
                          @endforeach 
                          @endif

                          data-bs-original-title="" title="">government entity
                        </label>
                        <label class="d-block" for="chk-ani3">
                          <input class="checkbox_animated" id="chk-ani3" name="legalentitytype[]" value="others" type="checkbox" 
                           
                          @if($profile->legalentitytype)
                          @foreach(json_decode($profile->legalentitytype) as $k) 
                          @if($k=="others")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          
                          data-bs-original-title="" title="">others
                        </label>
                      </div>
                    </div>

                    <div class="row">
                        <div class="">
                          <div class="mb-3">
                            <label> Governance</label>
                            <textarea class="form-control" id="exampleFormControlTextarea4" name="governance" required="" rows="3" name ="details">{{$profile->governance}}</textarea>
                          </div>
                        </div>
                      </div>


<br>

                    <div class="row">
                      <div class="col">
                      <label> Relationship with governemnt </label>
                        <label class="d-block" for="chk-ani">
                          <input class="checkbox_animated" id="chk-ani" name="relationshipwithgovernment[]" type="checkbox" value="none" 
                          @if($profile->relationshipwithgovernment)
                          @foreach(json_decode($profile->relationshipwithgovernment) as $k) 
                          @if($k=="none")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          data-bs-original-title="" title="">none
                        </label>
                        <label class="d-block" for="chk-ani1">
                          <input class="checkbox_animated" id="chk-ani1" name="relationshipwithgovernment[]" value="Endorsed by Ministry of Education"
                          @if($profile->relationshipwithgovernment)
                          @foreach(json_decode($profile->relationshipwithgovernment) as $k) 
                          @if($k=="Endorsed by Ministry of Education")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                           type="checkbox" data-bs-original-title="" title="">Endorsed by Ministry of Education
                        </label>
                        <label class="d-block" for="chk-ani2">
                          <input class="checkbox_animated" id="chk-ani2" name="relationshipwithgovernment[]" value="recognised by ICT Ministry" 
                          @if($profile->relationshipwithgovernment)
                          @foreach(json_decode($profile->relationshipwithgovernment) as $k) 
                          @if($k=="recognised by ICT Ministry")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          type="checkbox" data-bs-original-title="" title="">recognised by ICT Ministry
                        </label>
                        <label class="d-block" for="chk-ani3">
                          <input class="checkbox_animated" id="chk-ani3" name="relationshipwithgovernment[]" value="part of Government Ministry, Department or Agency" type="checkbox" 
                          @if($profile->relationshipwithgovernment)
                          @foreach(json_decode($profile->relationshipwithgovernment) as $k) 
                          @if($k=="part of Government Ministry, Department or Agency")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                        
                          
                          data-bs-original-title="" title="">part of Government Ministry, Department or Agency
                        </label>
                        <label class="d-block" for="chk-ani3">
                          <input class="checkbox_animated" id="chk-ani3" type="checkbox" name="relationshipwithgovernment[]" value="others"
                          @if($profile->relationshipwithgovernment)
                          @foreach(json_decode($profile->relationshipwithgovernment) as $k) 
                          @if($k=="others")
                          checked=""
                          @endif
                          @endforeach 
                          @endif
                          data-bs-original-title="" title="">others
                        </label>
                      </div>
                    </div>
                </div>   
              
                    <button type="submit" class="btn btn-primary pull-right">Edit NREN</button>                   


</form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
@endsection

@section('custom_js')
    @include('adminetic::admin.layouts.modules.profile.scripts')
@endsection
