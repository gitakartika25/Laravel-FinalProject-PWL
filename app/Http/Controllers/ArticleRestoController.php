<?php

namespace App\Http\Controllers;
use App\Resto;
use App\Comment;
use Illuminate\Http\Request;

class ArticleRestoController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function article($id){         
        $for= Resto::find($id);
        $comments = Comment::all();
        return view('postresto.postresto', compact('for','comments'));
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
        return view('postresto.postresto', compact(['for'=>$restos],['comments'=>$comments]));
    }
}
