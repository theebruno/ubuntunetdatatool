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
    public function nren(Request $request)
    {
        //
        $nrencount= DB::table('nren')->where('userid',$request->input('userid'))->count();

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

           $update = DB::table('nren')->where('userid',$request->input('userid'))->update(['userid'=>$request->input('userid'),'nren'=>$request->input('nren'),'networkname'=>$request->input('networkname'),"country"=>$request->input('country'),"website"=>$request->input('website'),"address"=>$request->input('address'),"generalemail"=>$request->input('generalemail'),"tel"=>$request->input('tel'),"fax"=>$request->input('fax'),"yearofcreation"=>$request->input('yearofcreation'),"relationshipwithgovernment"=>json_encode($r),"legalentitytype"=>json_encode($l),"governance"=>$request->input('governance'),"updated_at"=>DB::raw('CURRENT_TIMESTAMP')]);

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

            $data=array('userid'=>$request->input('userid'),'nren'=>$request->input('nren'),'networkname'=>$request->input('networkname'),"country"=>$request->input('country'),"website"=>$request->input('website'),"address"=>$request->input('address'),"generalemail"=>$request->input('generalemail'),"tel"=>$request->input('tel'),"fax"=>$request->input('fax'),"yearofcreation"=>$request->input('yearofcreation'),"relationshipwithgovernment"=>json_encode($r),"legalentitytype"=>json_encode($l),"governance"=>$request->input('governance'),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
            DB::table('nren')->insert($data);

        }
        return back()->with('success', "NREN has been updated!");
        
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
       
        if($request->input('save')){
            $deleted = DB::table('saved')->where('userid',Auth::id())->delete();
        //inserting answers
        $templates = DB::table('template')->get();
        foreach($templates as $template){



           
            if($template->id==95){

                if($request->input($template->id)){
                $destinationPath = 'info';
                
                $myimage = $request->file->getClientOriginalName();
                if( $myimage){
                $request->file->move(public_path($destinationPath), $myimage);

                $data=array('name'=>$myimage,'surveyid'=>$request->input('surveyid'),"questionid"=>$template->id,"userid"=>Auth::id(),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
                DB::table('saved')->insert($data);}
                }

                
            }

            else{
                if($request->input($template->id)){
                    $name=$request->input($template->id);

                }
                else{
                    $name="not answered";

                }
                $data=array('name'=>$name,'surveyid'=>$request->input('surveyid'),"questionid"=>$template->id,"userid"=>Auth::id(),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
                DB::table('saved')->insert($data);
    
            }
             




        }

        return redirect('answers')->with('success', "Response had beeen saved!");
    }
   
    

        $statuscount= DB::table('surveystatus')->where('userid',Auth::id())->where('surveyid',$request->input('surveyid'))->count();
        if($statuscount>0){

            return redirect('answers')->with('fail', "Response exists!");
        
        }
        else{

            //updating status
            $data=array('surveyid'=>$request->input('surveyid'),"status"=>'answered',"userid"=>Auth::id(),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
            DB::table('surveystatus')->insert($data);

        //inserting answers
        $templates = DB::table('template')->get();
        foreach($templates as $template){

            if($template->id==95){

                if($request->input($template->id)){
                $destinationPath = 'info';
                
                $myimage = $request->file->getClientOriginalName();
                if( $myimage){
                $request->file->move(public_path($destinationPath), $myimage);

                $data=array('name'=>$myimage,'surveyid'=>$request->input('surveyid'),"questionid"=>$template->id,"userid"=>Auth::id(),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
                DB::table('answers')->insert($data);}
                }

                
            }

            else{
                if($request->input($template->id)){
                    $name=$request->input($template->id);

                }
                else{
                    $name="not answered";

                }
                $data=array('name'=>$name,'surveyid'=>$request->input('surveyid'),"questionid"=>$template->id,"userid"=>Auth::id(),"created_at"=>DB::raw('CURRENT_TIMESTAMP'));
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
        $surveystatuses = DB::table('surveystatus')->where('userid',Auth::id())->get();
        $surveys = DB::select('select * from surveys');
        return view('admin.information.replies',['surveys'=>$surveys,'surveystatuses'=>$surveystatuses]);
        
    }
    
    public function reports(Request  $request)
    {
        //
        $surveystatuses = DB::table('surveystatus')->where('userid',Auth::id())->count();
        $c0 = DB::table('surveystatus')->count();
        $c1 = DB::table('users')->count()-1;
        $c2 = DB::table('surveys')->count() * $c1 ;
        $c2= $c2-$c0;
        
        if($request->input("load")){
            if($request->input("load")=="all"){
                $surveystatuses = DB::table('surveystatus')->where('userid',Auth::id())->count();
                $c0 = DB::table('surveystatus')->count();
                $c1 = DB::table('users')->count()-1;
                $c2 = DB::table('surveys')->count() * $c1 ;
                $c2= $c2-$c0;


            }
            else{
                $surveystatuses = DB::table('surveystatus')->where('userid',Auth::id())->count();
                $c0 = DB::table('surveystatus')->where('surveyid',$request->input("load"))->count();
                $c1 = DB::table('users')->count()-1;
                $c2 = DB::table('surveys')->where('id',$request->input("load"))->count() * $c1 ;
                $c2= $c2-$c0;

            }
            
        }

    
        // $c0= DB::select('select * from users')->count();
        // $c1 = DB::select('select * from surveys')->count() * $c0;
        $surveys = DB::select('select * from surveys');
        return view('admin.information.reports',['surveys'=>$surveys,'surveystatuses'=>$surveystatuses,'ans'=>$c0,'not'=>$c2]);
        
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
        // var_dump($surveys);
        return view('admin.information.infodetails',['surveys'=>$surveys,'users'=>$users,'surveystatuses'=>$surveystatuses,'nrens'=>$nrens]);
        
    }
    public function view($survey,$user,$year,$name)
    {
        $title="By ".$name." for  Year: ".$year;
        $answers = DB::table('answers')->where('surveyid',$survey)->where('userid',$user)->get();
        $templates = DB::table('template')->get();
        $surveys = DB::table('surveys')->where('id',$survey)->get();
        return view('admin.information.viewanswers',['surveys'=>$surveys,'answers'=>$answers,'templates'=>$templates,'title'=>$title]);
        
    }
    public function addanswers($id,Request  $request)
    {
        //
        
        // echo();
        $surveys = DB::table('surveys')->get();
        $surveyss = DB::table('surveys')->get();
        $templates = DB::table('template')->get();
        $answers = DB::table('answers')->where('surveyid',$id)->where('userid',Auth::id())->get();
        // var_dump($surveys);
        if($request->input('load')){
            if($request->input('load')=="saved"){
        
                $answers = DB::table('saved')->where('userid',Auth::id())->get();
                return view('admin.information.addanswers',['surveys'=>$surveys,'id'=>$id,'templates'=>$templates,'answers'=>$answers,"id"=>$id,]);
            }
            else{


                $answers = DB::table('answers')->where('surveyid',$request->input('load'))->where('userid',Auth::id())->get();
                return view('admin.information.addanswers',['surveys'=>$surveys,'id'=>$id,'templates'=>$templates,'answers'=>$answers,"id"=>$id]);
            }

        }
        
        
        
        return view('admin.information.addanswers',['surveys'=>$surveys,'id'=>$id,'templates'=>$templates,'answers'=>$answers,"id"=>$id]);
        
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
        $replies = DB::table('surveystatus')->where('userid',Auth::id())->count();
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
    public function status(Request  $request)
    {
        //
        $update = DB::table('surveys')->where('id',$request->input('id'))->update(['status' => $request->input('status'),"updated_at"=>DB::raw('CURRENT_TIMESTAMP')]);


        return redirect('infoview')->with('success', "Status has been updated!");
    }
}
