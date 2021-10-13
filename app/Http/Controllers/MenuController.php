<?php

namespace App\Http\Controllers;
use App\Resto;
use App\Comment;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\DB;
use PDF;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function article($id){         
        $restos= Resto::find($id);
        return view('menu.menu',compact('restos'));
    } 
    public function search(Request $request){
        $search =$request->search;
        $comments = Comment::all();
        $for=DB::table('restos')->where('name','like',"%".$search."%")->first();
        return view('postresto.postresto',compact('for','comments'));
    }
    public function index(){
        $restos = Resto::all();
        $comments = Comment::all();
        return view('menu.menu', compact('restos','comments'));
    }
}
