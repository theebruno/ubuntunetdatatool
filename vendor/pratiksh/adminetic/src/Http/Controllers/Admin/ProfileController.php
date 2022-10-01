<?php

namespace Pratiksh\Adminetic\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Pratiksh\Adminetic\Contracts\ProfileRepositoryInterface;
use Pratiksh\Adminetic\Http\Requests\ProfileRequest;
use Pratiksh\Adminetic\Models\Admin\Profile;
use DB;

class ProfileController extends Controller
{
    protected $profileRepositoryInterface;

    public function __construct(ProfileRepositoryInterface $profileRepositoryInterface)
    {
        $this->middleware('auth');
        $this->profileRepositoryInterface = $profileRepositoryInterface;
    }

    /**
     * Display the specified resource.
     *
     * @param  \Pratiksh\Adminetic\Models\Admin\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function show(Profile $profile)
    {
    

      
       

        return $this->checkAuthorization($profile) ? view('adminetic::admin.profile.show', $this->profileRepositoryInterface->showProfile($profile)) : abort(403);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Pratiksh\Adminetic\Models\Admin\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function edit(Profile $profile)

    {
        // return $profile->id;
        $nren= DB::table('nren')->where('userid',$profile->user_id)->get();
        foreach($nren as $nren){
           
            $profile->nren=$nren->nren;
            $profile->networkname=$nren->networkname;
            $profile->addresss=$nren->address;
            $profile->website=$nren->website;
            $profile->generalemail=$nren->generalemail;
            $profile->tel=$nren->tel;
            $profile->fax=$nren->fax;
            $profile->yearofcreation=$nren->yearofcreation;
            $profile->relationshipwithgovernment=$nren->relationshipwithgovernment;
            $profile->legalentitytype=$nren->legalentitytype;
            $profile->governance=$nren->governance;
            $profile->countryy=$nren->country;

        }
       

        return $this->checkAuthorization($profile) ? view('adminetic::admin.profile.edit', $this->profileRepositoryInterface->editProfile($profile)) : abort(403);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Pratiksh\Adminetic\Http\Requests\ProfileRequest  $request
     * @param  \Pratiksh\Adminetic\Models\Admin\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function update(ProfileRequest $request, Profile $profile)
    {
        if ($this->checkAuthorization($profile)) {
            $this->profileRepositoryInterface->updateProfile($request, $profile);

            return redirect(adminEditRoute('profile', $profile->id))->withInfo('Profile Updated Sucessfully');
        } else {
            return abort(403);
        }
    }

    /**
     * Check Authorization.
     */
    protected function checkAuthorization(Profile $profile)
    {
        return auth()->user()->hasRole('superadmin') || auth()->user()->hasRole('admin') || auth()->user()->id == $profile->user_id;
    }
}
