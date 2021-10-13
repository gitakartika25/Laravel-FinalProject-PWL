<?php

namespace App\Http\Controllers;
use App\Resto;
use App\Comment;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class AboutRestoController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function about(){
        $restos = Resto::all();
        $comments = Comment::all();
    	return view('aboutresto.aboutresto',compact('restos','comments'));
    }
    public function search(Request $request){
        $search =$request->search;
        $comments = Comment::all();
        $for=DB::table('restos')->where('name','like',"%".$search."%")->first();
        return view('postresto.postresto',compact('for','comments'));
    }
    public function createcomment(Request $request){
        $add = new Comment();
        $add->nama=$request->nama;
        $add->email=$request->email;
        $add->comment=$request->comment;
        $add->save();
        $restos = Resto::all();
        $comments = Comment::all();
    	return view('aboutresto.aboutresto',compact('restos','comments'));
    }
}
