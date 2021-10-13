<?php

namespace App\Http\Controllers;
use App\Resto;
use App\Comment;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeRestoController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(){         
        $restos = Resto::all();
        return view('homeresto.homeresto',['for'=>$restos]);
    } 
    public function search(Request $request){
        $search =$request->search;
        $comments = Comment::all();
        $for=DB::table('restos')->where('name','like',"%".$search."%")->first();
        return view('postresto.postresto',compact('for','comments'));
    }
    public function comment(){         
        $comments = Comment::all();
        return view('homeresto.homeresto',['for'=>$comments]);
    } 
}