<?php

namespace Weeesh\Http\Controllers;

use Auth;
use Illuminate\Http\Request;
use DB;
use Weeesh\Friendship;
use Weeesh\ListRow;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $id = DB::table('user_profile')->where('id_user',Auth::id())->pluck('id_user_profile');
        //return $name;
        $userId = Auth::id();
        // dd( $userId);
        //$query2=DB::table('Friendship')->select('id_user_profile_by')->Where('id_user_profile_to','$userid')->get();
       // $query1=DB::table('Friendship')->select('id_user_profile_to')->Where('id_user_profile_by','$userid')->get();
        
//
        $grid = DB::table('list_row as li')

            ->Join('wlist as up','li.id_list','up.id_list')

            ->Join('user_profile as p','li.id_user_profile_creator','p.id_user_profile')
            ->select('li.id_list','object','avatar','up.name','p.name as pname','p.id_user_profile')
            ->whereIn('li.id_user_profile_creator', function($query) use($id){
                $query->select('id_user_profile_to')->from('friendship')
                    ->Where('id_user_profile_by','=',$id);})
            ->orwhereIn('li.id_user_profile_creator', function($query1) use($id){
                $query1->select('id_user_profile_by')->from('friendship')
                    ->Where('id_user_profile_to','=',$id);})->get();
        $user =  Auth::user();

        return view('home',compact('user','grid'));
    }
//
//SELECT id_list,object FROM list_row WHERE id_user_profile_creator IN(SELECT  id_user_profile_by FROM `friendship` WHERE  id_user_profile_to=9 || id_user_profile_by=9 )
}
