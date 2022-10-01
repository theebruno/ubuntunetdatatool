<div>
    <form wire:submit.prevent="submit">
        @if (!empty($errors))
        @if (count($errors) > 0)
        @foreach ($errors->all() as $error)
        {{ $error }}
        @endforeach
        @endif
        @endif
        <div class="row">
            <div class="">
                <div class="row" wire:ignore>
                    <div class="col-lg-12">
                        <div class="avatar"><img class="img-100 rounded-circle" id="profile_pic_placeholder"
                                src="{{ getProfilePlaceholder($profile) }}" alt="Profile Picture"></div>
                        <br>
                        <input type="file" wire:model.defer="profile_pic" id="profile_pic" onchange="readURL(this)">
                        @error('profile_pic') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                </div>
                <br>
                <div class="row">
                <div class="">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" wire:model.defer="address" id="address" class="form-control"
                            value="{{ $address ?? old('address') }}">
                        @error('address') <span class="text-danger">{{ $message }}</span> @enderror
</div>    
                    <div class="" wire:ignore>
                        <label for="phone_no" class="form-label">Phone</label>
                        <select wire:model.defer="phone_no" name="phone_no[]" class="form-control" id="phone_no"
                            multiple="">
                            @if (isset($phone_no))
                            @foreach ($phone_no as $phone)
                            <option value="{{ $phone }}" selected>{{ $phone }}</option>
                            @endforeach
                            @endif
                        </select>
                        @error('phone') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                    
                    <div class="">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" wire:model.defer="username" id="username" class="form-control"
                            value="{{ $username ?? old('username') }}">
                        @error('username') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                </div>
               
          
              
                <div class="row">
                    <div class="">
                        <label class="form-label" for="country">Country</label>
                        <select class="form-control select2" wire:model.defer="country" id="country" style="width:100%">
                            @if (isset($countries))
                            @foreach ($countries as $country_name)
                            <option value="{{ $country_name }}">
                                {{ $country_name }}</option>
                            @endforeach
                            @endif
                        </select>
                        @error('country') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                </div>
             
                <div class="row">
                    <div class="">
                        
                        <input type="hidden" wire:model.defer="father_name" class="form-control"
                            value="{{ $father_name ?? old('father_name') }}">
                        @error('father_name') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="">
                     
                        <input type="hidden" wire:model.defer="mother_name" class="form-control"
                            value="{{ $mother_name ?? old('mother_name') }}">
                        @error('mother_name') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                </div>
              

             
            </div>
            <div class="col-lg-8">
      
            
                <br>
                <div wire:loading="submit">
                    <div class="loader-box">
                        <div class="loader-15"></div>
                    </div>
                </div>
                <div wire:loading.remove="submit">
                    <button type="submit" class="btn btn-warning btn-air-warning">
                        Edit Profile
                    </button>
                </div>
            </div>
        </div>
    </form>
    @push('livewire_third_party')
    <script>
        $(function() {
                initializeProfile();
                Livewire.on('initializeProfile', function() {
                    initializeProfile();
                });
                Livewire.on('profile_updated', function() {
                    var notify_allow_dismiss = Boolean(
                        {{ config('adminetic.notify_allow_dismiss', true) }});
                    var notify_delay = {{ config('adminetic.notify_delay', 2000) }};
                    var notify_showProgressbar = Boolean(
                        {{ config('adminetic.notify_showProgressbar', true) }});
                    var notify_timer = {{ config('adminetic.notify_timer', 300) }};
                    var notify_newest_on_top = Boolean(
                        {{ config('adminetic.notify_newest_on_top', true) }});
                    var notify_mouse_over = Boolean(
                        {{ config('adminetic.notify_mouse_over', true) }});
                    var notify_spacing = {{ config('adminetic.notify_spacing', 1) }};
                    var notify_notify_animate_in =
                        "{{ config('adminetic.notify_animate_in', 'animated fadeInDown') }}";
                    var notify_notify_animate_out =
                        "{{ config('adminetic.notify_animate_out', 'animated fadeOutUp') }}";
                    var notify = $.notify({
                        title: "<i class='{{ config('adminetic.notify_icon', 'fa fa-bell-o') }}'></i> " +
                            "Success",
                        message: "Profile Information Updated !"
                    }, {
                        type: 'success',
                        allow_dismiss: notify_allow_dismiss,
                        delay: notify_delay,
                        showProgressbar: notify_showProgressbar,
                        timer: notify_timer,
                        newest_on_top: notify_newest_on_top,
                        mouse_over: notify_mouse_over,
                        spacing: notify_spacing,
                        animate: {
                            enter: notify_notify_animate_in,
                            exit: notify_notify_animate_out
                        }
                    });
                });

                function initializeProfile() {
                    $('#phone_no').select2({
                        dropdownAutoWidth: true,
                        width: '100%',
                        tags: true,
                        tokenSeparators: [',', ' ']
                    });
                    // Select Year

                    $('#birthday').daterangepicker({parentEl: $('#birthday').parent(),
                    singleDatePicker: true,
                    showDropdowns: true,
                 maxDate: getMinDate(),
                    locale: {
                    format: 'YYYY-MM-DD'
                    },
                    });
        
                    $('#country').on('change', function() {
                        var data = $('#country').select2("val");
                        @this.set('country', data);
                    });
                    $('#phone_no').on('change', function() {
                        var data = $('#phone_no').select2("val");
                        @this.set('phone_no', data);
                    });
                }

                function getMinDate() {
                    var date = new Date();
                    date.setFullYear(date.getFullYear() - 18);
                    return date
                }

                function getMaxDate() {
                    var maxDate = getMinDate();
                    maxDate.setFullYear(maxDate.getFullYear() - 80);
                    return maxDate;
                }
            });

    </script>

    <script>
        function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        $('#profile_pic_placeholder')
                            .attr('src', e.target.result)
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }

    </script>
    @endpush
</div>