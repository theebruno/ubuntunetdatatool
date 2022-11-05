<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;

class infocontroller extends Controller
{
    public function __construct()
{
    $this->middleware('auth');
}
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('admin.information.addinformation');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function reassignnren(Request $request)
    {
        //

        if($request->input('nrenid')=='0'){
            
            return back()->with('fail', "Please choose an NREN!");
        

        }
        $nrencount= DB::table('nrenuser')->where('userid',$request->input('userid'))->count();

        if($nrencount>0){
           //updating nrenuser
         
       
           $update = DB::table('nrenuser')->where('userid',$request->input('userid'))->update(['userid'=>$request->input('userid'),'nrenid'=>$request->input('nrenid'),"updated_at"=>DB::raw('CURRENT_TIMESTAMP')]);
        
        }
        else
        {
            // adding nrenuser

             

            $data=array('userid'=>$request->input('userid'),'nrenid'=>$request->input('nrenid'),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
            DB::table('nrenuser')->insert($data);

        }
        return back()->with('success', "NREN has been assigned!");
        
    }

    public function nren(Request $request)
    {
        //
        $nrencount= DB::table('nren')->where('id',$request->input('nrenid'))->count();

        if($nrencount>0){
           //updating nren
            if($request->input('legalentitytype')){
                  $l=$request->input('legalentitytype');

            }else{
                  $l[]="not answered";


            }

            if($request->input('relationshipwithgovernment')){
                $r=$request->input('relationshipwithgovernment');

            }
            else{
                $r[]="not answered";
            }

           $update = DB::table('nren')->where('id',$request->input('nrenid'))->update(['userid'=>'1','nren'=>$request->input('nren'),'networkname'=>$request->input('networkname'),"country"=>$request->input('country'),"website"=>$request->input('website'),"address"=>$request->input('address'),"generalemail"=>$request->input('generalemail'),"tel"=>$request->input('tel'),"fax"=>$request->input('fax'),"yearofcreation"=>$request->input('yearofcreation'),"relationshipwithgovernment"=>json_encode($r),"legalentitytype"=>json_encode($l),"governance"=>$request->input('governance'),"updated_at"=>DB::raw('CURRENT_TIMESTAMP')]);
           return back()->with('success', "NREN has been updated!");
        }
        else
        {
            // adding nren

               if($request->input('legalentitytype')){
                  $l=$request->input('legalentitytype');

            }else{
                  $l[]="not answered";

                  

            }

            if($request->input('relationshipwithgovernment')){
                $r=$request->input('relationshipwithgovernment');

            }
            else{
                $r[]="not answered";
            }

            $data=array('userid'=>'1','nren'=>$request->input('nren'),'networkname'=>$request->input('networkname'),"country"=>$request->input('country'),"website"=>$request->input('website'),"address"=>$request->input('address'),"generalemail"=>$request->input('generalemail'),"tel"=>$request->input('tel'),"fax"=>$request->input('fax'),"yearofcreation"=>$request->input('yearofcreation'),"relationshipwithgovernment"=>json_encode($r),"legalentitytype"=>json_encode($l),"governance"=>$request->input('governance'),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
            DB::table('nren')->insert($data);

            return back()->with('success', "NREN has been created!");

        }
      
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
      
        $data=array('status'=>"running",'title'=>$request->input('title'),'step'=>0,"details"=>$request->input('details'),"year"=>$request->input('year'),"start"=>$request->input('start'),"end"=>$request->input('end'),"userid"=>Auth::id(),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
        DB::table('surveys')->insert($data);
        return redirect('infoview')->with('success', "Survey has been added!");
        // return view('admin.information.viewinformation');
    }
    public function respond(Request $request)
    {
       // the userid means the nrenid
        if($request->input('save')){
            $deleted = DB::table('saved')->where('userid',Auth::id())->delete();
        //inserting answers
        $templates = DB::table('template')->get();
        foreach($templates as $template){



           
            if($template->id==40){
// if ($request->hasFile($template->id)) {
//     /
//                     return "yes";
// }
//  else{
//     return "No";

//  }
                if($request->hasFile($template->id)){
                $destinationPath = 'info';
               
                $myimage = $request->file($template->id)->getClientOriginalName();
                if( $myimage){
                $request->file($template->id)->move(public_path($destinationPath), $myimage);

                $data=array('name'=>$myimage,'surveyid'=>$request->input('surveyid'),"questionid"=>$template->id,"userid"=>$request->input('nrenid'),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
                DB::table('saved')->insert($data);}
                }

                
            }

            else{
                if($request->input($template->id)){
// these are the fields that have check boxes being encoded then saved
                if($template->id==10 || $template->id==12 || $template->id==20 || $template->id==28 || $template->id==31 || $template->id==39 || $template->id==50 || 
                    $template->id==56 || $template->id==58 || $template->id==61 || $template->id==63 || $template->id==65 || $template->id==67 || $template->id==83 || 
                    $template->id==85 || $template->id==91 ){

                  $name=json_encode($request->input($template->id));
                    

                }
//
                else{
                    $name=$request->input($template->id);
                }



                }


                else{


//              
                if($template->type=='number'){
                  
                  $name=0;
                    

                }
                else{


                if($template->id==10 || $template->id==12 || $template->id==20 || $template->id==28 || $template->id==31 || $template->id==39 || $template->id==50 || 
                    $template->id==56 || $template->id==58 || $template->id==61 || $template->id==63 || $template->id==65 || $template->id==67 || $template->id==83 || 
                    $template->id==85 || $template->id==91 ){
                  $value=["none","empty"];
                  $name=json_encode($value);
                    

                }
                else{
                    $name="N/A";

                }
                  
                }

                }
                $data=array('name'=>$name,'surveyid'=>$request->input('surveyid'),"questionid"=>$template->id,"userid"=>$request->input('nrenid'),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
                DB::table('saved')->insert($data);
    
            }
             




        }

        return redirect('answers')->with('success', "Response had beeen saved!");
    }
   
    

        $statuscount= DB::table('surveystatus')->where('userid',$request->input('nrenid'))->where('surveyid',$request->input('surveyid'))->count();
        if($statuscount>0){

            return redirect('answers')->with('fail', "Response exists!");
        
        }
        else{

            //updating status
            $data=array('surveyid'=>$request->input('surveyid'),"status"=>'answered',"userid"=>$request->input('nrenid'),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
            DB::table('surveystatus')->insert($data);

        //inserting answers
        $templates = DB::table('template')->get();
          foreach($templates as $template){



           
            if($template->id==40){
// if ($request->hasFile($template->id)) {
//     /
//                     return "yes";
// }
//  else{
//     return "No";

//  }
                if($request->hasFile($template->id)){
                $destinationPath = 'info';
               
                $myimage = $request->file($template->id)->getClientOriginalName();
                if( $myimage){
                $request->file($template->id)->move(public_path($destinationPath), $myimage);

                $data=array('name'=>$myimage,'surveyid'=>$request->input('surveyid'),"questionid"=>$template->id,"userid"=>$request->input('nrenid'),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
                DB::table('answers')->insert($data);}
                }

                
            }

            else{
                if($request->input($template->id)){
// these are the fields that have check boxes being encoded then saved
                if($template->id==10 || $template->id==12 || $template->id==20 || $template->id==28 || $template->id==31 || $template->id==39 || $template->id==50 || 
                    $template->id==56 || $template->id==58 || $template->id==61 || $template->id==63 || $template->id==65 || $template->id==67 || $template->id==83 || 
                    $template->id==85 || $template->id==91 ){

                  $name=json_encode($request->input($template->id));
                    

                }
//
                else{
                    $name=$request->input($template->id);
                }



                }


                else{


//              
                if($template->type=='number'){
                  
                  $name=0;
                    

                }
                else{


                if($template->id==10 || $template->id==12 || $template->id==20 || $template->id==28 || $template->id==31 || $template->id==39 || $template->id==50 || 
                    $template->id==56 || $template->id==58 || $template->id==61 || $template->id==63 || $template->id==65 || $template->id==67 || $template->id==83 || 
                    $template->id==85 || $template->id==91 ){
                  $value=["none","empty"];
                  $name=json_encode($value);
                    

                }
                else{
                    $name="N/A";

                }
                  
                }

                }
                $data=array('name'=>$name,'surveyid'=>$request->input('surveyid'),"questionid"=>$template->id,"userid"=>$request->input('nrenid'),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
                DB::table('answers')->insert($data);
    
            }
             




        }

            return redirect('answers')->with('success', "Response had beeen recorded!");

        } 

       
        // return redirect('answers')->with('success', "Response had beeen recorded!");
        // return view('admin.information.viewinformation');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        //
        $surveys = DB::select('select * from surveys');
        return view('admin.information.viewinformation',['surveys'=>$surveys]);
        
    }
    public function upload(Request  $request)
    {
        //
        $destinationPath = 'info';
        $myimage = $request->file->getClientOriginalName();
        $request->file->move(public_path($destinationPath), $myimage);
        return "yes";
        
    }
    public function answers()
    {
        //
        $surveystatuses = DB::table('surveystatus')->where('userid',Auth::id())->get();

        $surveys = DB::select('select * from surveys');
        return view('admin.information.answers',['surveys'=>$surveys,'surveystatuses'=>$surveystatuses]);
        
    }
    public function replies()
    {
        //
        $nrenid="";

        $nrenids=DB::table('nrenuser')->where('userid',Auth::id())->get();
        foreach ($nrenids as $nrenid) {
            
        $nrenid=$nrenid->nrenid;
        }


        $surveystatuses = DB::table('surveystatus')->where('userid',$nrenid)->get();
       
        $surveys = DB::select('select * from surveys');
        return view('admin.information.replies',['surveys'=>$surveys,'surveystatuses'=>$surveystatuses]);
        
    }
    public function nrenreports(Request  $request)
    {
        //
      
        
    }


    public function reports(Request  $request)
{
        //getting nrenid instead of userid
        $nrenid="";

        $nrenids=DB::table('nrenuser')->where('userid',Auth::id())->get();
        foreach ($nrenids as $nrenid) {
            
        $nrenid=$nrenid->nrenid;
        }

        $users = DB::table('users')->get();
$nrens = DB::table('nren')->get();
if($request->input("nren")){

    $surveystatuses = DB::table('surveystatus')->where('userid',$nrenid)->count();
       $answers = DB::table('answers')->where('userid',$request->input("nren"))->get();

    $surveys = DB::select('select * from surveys');
    return view('admin.information.nrenreports',['surveys'=>$surveys,'surveystatuses'=>$surveystatuses,'users'=>$users,'nrens'=>$nrens,'answers'=>$answers]);

}




        $surveystatuses = DB::table('surveystatus')->where('userid',$nrenid)->count();
        $c0 = DB::table('surveystatus')->count();
        $c1 = DB::table('nren')->count();
        $c2 = DB::table('surveys')->count() * $c1 ;
        $c2= $c2-$c0;
        
        if($request->input("load")){
            if($request->input("load")=="all"){
                $surveystatuses = DB::table('surveystatus')->where('userid',$nrenid)->count();
                $c0 = DB::table('surveystatus')->count();
                $c1 = DB::table('nren')->count();
                $c2 = DB::table('surveys')->count() * $c1 ;
                $c2= $c2-$c0;


            }
            else{
                $surveystatuses = DB::table('surveystatus')->where('userid',$nrenid)->count();
                $c0 = DB::table('surveystatus')->where('surveyid',$request->input("load"))->count();
                $c1 = DB::table('nren')->count();
                $c2 = DB::table('surveys')->where('id',$request->input("load"))->count() * $c1 ;
                $c2= $c2-$c0;

            }
            
        }

    
        // $c0= DB::select('select * from users')->count();
        // $c1 = DB::select('select * from surveys')->count() * $c0;
        $surveys = DB::select('select * from surveys');
        return view('admin.information.reports',['surveys'=>$surveys,'surveystatuses'=>$surveystatuses,'ans'=>$c0,'not'=>$c2,'users'=>$users,'nrens'=>$nrens]);
        
    }
    public function viewreports(Request  $request)
    {
        //
        $surveystatuses = DB::table('surveystatus')->where('userid',Auth::id())->count();
        $c0 = DB::table('surveystatus')->count();
        $c1 = DB::table('users')->count()-1;
        $c2 = DB::table('surveys')->count() * $c1 ;
        $c2= $c2-$c0;
        

    
        // $c0= DB::select('select * from users')->count();
        // $c1 = DB::select('select * from surveys')->count() * $c0;
        $surveys = DB::select('select * from surveys');
        return view('admin.information.reports',['surveys'=>$surveys,'surveystatuses'=>$surveystatuses,'ans'=>$c0,'not'=>$c2]);
        
    }
    
    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function details($id)
    {
        //
        // echo();

        $surveystatuses = DB::table('surveystatus')->get();
        $surveys = DB::table('surveys')->where('id',$id)->get();
        $users = DB::table('users')->get();
        $nrens = DB::table('nren')->get();
        $nrenusers = DB::table('nrenuser')->get();
        // var_dump($surveys);
        return view('admin.information.infodetails',['surveys'=>$surveys,'users'=>$users,'surveystatuses'=>$surveystatuses,'nrens'=>$nrens,'nrenusers'=>$nrenusers]);
        
    }
    public function view($survey,$user,$year,$name)
    {
        //userid is nrenid
        $nrenid="";

        $nrenids=DB::table('nrenuser')->where('userid',$user)->get();
        foreach ($nrenids as $nrenid) {
            
        $nrenid=$nrenid->nrenid;
        }
   $nrens = DB::table('nren')->get();
    



        $title="By ".$name." for  Year: ".$year;
    $answers = DB::table('answers')->where('surveyid',$survey)->where('userid',$nrenid)->get();
        $templates = DB::table('template')->get();
        $surveys = DB::table('surveys')->where('id',$survey)->get();
        return view('admin.information.viewanswers',['surveys'=>$surveys,'answers'=>$answers,'templates'=>$templates,'title'=>$title,'nrens'=>$nrens,'nrenusers'=>$nrenids]);
        
    }
    public function addanswers($id,Request  $request)
    {
        //
        
        // echo();
        $nrenid="";

        $nrenids=DB::table('nrenuser')->where('userid',Auth::id())->get();
        foreach ($nrenids as $nrenid) {
            
        $nrenid=$nrenid->nrenid;
        }

        $surveys = DB::table('surveys')->get();
        $nrens = DB::table('nren')->get();
        $nrenusers = DB::table('nrenuser')->get();
        $surveyss = DB::table('surveys')->get();
        $templates = DB::table('template')->get();
        $answers = DB::table('saved')->where('surveyid',$id)->where('userid',$nrenid)->get();
        // var_dump($surveys);
    
        if($request->input('load')){
            if($request->input('load')=="saved"){
        
                $answers = DB::table('saved')->where('userid',$nrenid)->get();
                return view('admin.information.addanswers',['surveys'=>$surveys,'id'=>$id,'templates'=>$templates,'answers'=>$answers,"id"=>$id,'nrens'=>$nrens,'nrenusers'=>$nrenusers]);
            }
            else{


                $answers = DB::table('answers')->where('surveyid',$request->input('load'))->where('userid',$nrenid)->get();
                return view('admin.information.addanswers',['surveys'=>$surveys,'id'=>$id,'templates'=>$templates,'answers'=>$answers,"id"=>$id,'nrens'=>$nrens,'nrenusers'=>$nrenusers]);
            }

        }
        
        
        
        return view('admin.information.addanswers',['surveys'=>$surveys,'id'=>$id,'templates'=>$templates,'answers'=>$answers,"id"=>$id,'nrens'=>$nrens,'nrenusers'=>$nrenusers]);
        
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $i
     * @return \Illuminate\Http\Response
     */
    public function dashboard()
    {
        //
        $nrenid="";

        $nrenids=DB::table('nrenuser')->where('userid',Auth::id())->get();
        foreach ($nrenids as $nrenid) {
            
        $nrenid=$nrenid->nrenid;
        }

        $replies = DB::table('surveystatus')->where('userid',$nrenid)->count();
        $repliesall = DB::table('surveystatus')->count();
        $users = DB::table('users')->count();
        $surveys = DB::table('surveys')->count();
        $templates = DB::table('template')->count();
        return view('admin.dashboard.index',['surveys'=>$surveys,'users'=>$users,'templates'=>$templates,'replies'=>$replies,'repliesall'=>$repliesall]);
        
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request  $request)
    {
        //
        $deleted = DB::table('surveys')->where('id',$request->input('id'))->delete();


        return redirect('infoview')->with('fail', "Survey has been deleted!");
    }

      public function destroynren(Request  $request)
    {
        //
        $deleted = DB::table('nren')->where('id',$request->input('id'))->delete();
        $deletedusers = DB::table('nrenuser')->where('nrenid',$request->input('id'))->delete();


        return redirect('nreninfo')->with('fail', "NREN has been deleted!");
    }

    public function status(Request  $request)
    {
        //
        $update = DB::table('surveys')->where('id',$request->input('id'))->update(['status' => $request->input('status'),"updated_at"=>DB::raw('CURRENT_TIMESTAMP')]);


        return redirect('infoview')->with('success', "Status has been updated!");
    }
    public function nreninfo()
    {
        //
        // echo();
        $nrens = DB::table('nren')->get();
        $users = DB::table('users')->get();
        // var_dump($surveys);
        return view('admin.information.nreninfo',['nrens'=>$nrens,'users'=>$users]);
        
    }
        public function assignnren()
    {
        //
        // echo();
        $nrens = DB::table('nren')->get();
        $users = DB::table('users')->get();
        $nrenusers = DB::table('nrenuser')->get();
        // var_dump($surveys);
        return view('admin.information.assignnren',['nrens'=>$nrens,'users'=>$users,'nrenusers'=>$nrenusers]);
        
    }
    public function nrenedit($id)
    {
        //
        // echo();
        $countries = ['Afghanistan', 'Albania', 'Algeria', 'American Samoa', 'Andorra', 'Angola', 'Anguilla', 'Antarctica', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda', 'Bhutan', 'Bolivia', 'Bosnia and Herzegowina', 'Botswana', 'Bouvet Island', 'Brazil', 'British Indian Ocean Territory', 'Brunei Darussalam', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde', 'Cayman Islands', 'Central African Republic', 'Chad', 'Chile', 'China', 'Christmas Island', 'Cocos (Keeling) Islands', 'Colombia', 'Comoros', 'Congo', 'Congo, the Democratic Republic of the', 'Cook Islands', 'Costa Rica', "Cote d'Ivoire", 'Croatia (Hrvatska)', 'Cuba', 'Cyprus', 'Czech Republic', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'East Timor', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Ethiopia', 'Falkland Islands (Malvinas)', 'Faroe Islands', 'Fiji', 'Finland', 'France', 'France Metropolitan', 'French Guiana', 'French Polynesia', 'French Southern Territories', 'Gabon', 'Gambia', 'Georgia', 'Germany', 'Ghana', 'Gibraltar', 'Greece', 'Greenland', 'Grenada', 'Guadeloupe', 'Guam', 'Guatemala', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Haiti', 'Heard and Mc Donald Islands', 'Holy See (Vatican City State)', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran (Islamic Republic of)', 'Iraq', 'Ireland', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', "Korea, Democratic People's Republic of", 'Korea, Republic of', 'Kuwait', 'Kyrgyzstan', "Lao, People's Democratic Republic", 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libyan Arab Jamahiriya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macau', 'Macedonia, The Former Yugoslav Republic of', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Martinique', 'Mauritania', 'Mauritius', 'Mayotte', 'Mexico', 'Micronesia, Federated States of', 'Moldova, Republic of', 'Monaco', 'Mongolia', 'Montserrat', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru', 'Nepal', 'Netherlands', 'Netherlands Antilles', 'New Caledonia', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'Northern Mariana Islands', 'Norway', 'Oman', 'Pakistan', 'Palau', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines', 'Pitcairn', 'Poland', 'Portugal', 'Puerto Rico', 'Qatar', 'Reunion', 'Romania', 'Russian Federation', 'Rwanda', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Vincent and the Grenadines', 'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Seychelles', 'Sierra Leone', 'Singapore', 'Slovakia (Slovak Republic)', 'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'South Georgia and the South Sandwich Islands', 'Spain', 'Sri Lanka', 'St. Helena', 'St. Pierre and Miquelon', 'Sudan', 'Suriname', 'Svalbard and Jan Mayen Islands', 'Swaziland', 'Sweden', 'Switzerland', 'Syrian Arab Republic', 'Taiwan, Province of China', 'Tajikistan', 'Tanzania, United Republic of', 'Thailand', 'Togo', 'Tokelau', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Turks and Caicos Islands', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'United States Minor Outlying Islands', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Venezuela', 'Vietnam', 'Virgin Islands (British)', 'Virgin Islands (U.S.)', 'Wallis and Futuna Islands', 'Western Sahara', 'Yemen', 'Yugoslavia', 'Zambia', 'Zimbabwe'];
        $profiles = DB::table('nren')->where('id',$id)->get();
        $users = DB::table('users')->get();
     
        // var_dump($surveys);
        return view('admin.information.nrenedit',['profiles'=>$profiles,'users'=>$users, 'countries'=>$countries]);
        
    } 
     public function nrenadd()
    {
        //
        // echo();
        $countries = ['Afghanistan', 'Albania', 'Algeria', 'American Samoa', 'Andorra', 'Angola', 'Anguilla', 'Antarctica', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda', 'Bhutan', 'Bolivia', 'Bosnia and Herzegowina', 'Botswana', 'Bouvet Island', 'Brazil', 'British Indian Ocean Territory', 'Brunei Darussalam', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde', 'Cayman Islands', 'Central African Republic', 'Chad', 'Chile', 'China', 'Christmas Island', 'Cocos (Keeling) Islands', 'Colombia', 'Comoros', 'Congo', 'Congo, the Democratic Republic of the', 'Cook Islands', 'Costa Rica', "Cote d'Ivoire", 'Croatia (Hrvatska)', 'Cuba', 'Cyprus', 'Czech Republic', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'East Timor', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Ethiopia', 'Falkland Islands (Malvinas)', 'Faroe Islands', 'Fiji', 'Finland', 'France', 'France Metropolitan', 'French Guiana', 'French Polynesia', 'French Southern Territories', 'Gabon', 'Gambia', 'Georgia', 'Germany', 'Ghana', 'Gibraltar', 'Greece', 'Greenland', 'Grenada', 'Guadeloupe', 'Guam', 'Guatemala', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Haiti', 'Heard and Mc Donald Islands', 'Holy See (Vatican City State)', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran (Islamic Republic of)', 'Iraq', 'Ireland', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', "Korea, Democratic People's Republic of", 'Korea, Republic of', 'Kuwait', 'Kyrgyzstan', "Lao, People's Democratic Republic", 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libyan Arab Jamahiriya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macau', 'Macedonia, The Former Yugoslav Republic of', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Martinique', 'Mauritania', 'Mauritius', 'Mayotte', 'Mexico', 'Micronesia, Federated States of', 'Moldova, Republic of', 'Monaco', 'Mongolia', 'Montserrat', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru', 'Nepal', 'Netherlands', 'Netherlands Antilles', 'New Caledonia', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'Northern Mariana Islands', 'Norway', 'Oman', 'Pakistan', 'Palau', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines', 'Pitcairn', 'Poland', 'Portugal', 'Puerto Rico', 'Qatar', 'Reunion', 'Romania', 'Russian Federation', 'Rwanda', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Vincent and the Grenadines', 'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Seychelles', 'Sierra Leone', 'Singapore', 'Slovakia (Slovak Republic)', 'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'South Georgia and the South Sandwich Islands', 'Spain', 'Sri Lanka', 'St. Helena', 'St. Pierre and Miquelon', 'Sudan', 'Suriname', 'Svalbard and Jan Mayen Islands', 'Swaziland', 'Sweden', 'Switzerland', 'Syrian Arab Republic', 'Taiwan, Province of China', 'Tajikistan', 'Tanzania, United Republic of', 'Thailand', 'Togo', 'Tokelau', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Turks and Caicos Islands', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'United States Minor Outlying Islands', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Venezuela', 'Vietnam', 'Virgin Islands (British)', 'Virgin Islands (U.S.)', 'Wallis and Futuna Islands', 'Western Sahara', 'Yemen', 'Yugoslavia', 'Zambia', 'Zimbabwe'];
      
     
        // var_dump($surveys);
        return view('admin.information.nrenadd',['countries'=>$countries]);
        
    }
}
