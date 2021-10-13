<?php

namespace App\Http\Controllers;
use App\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function comment(){
        $comments = Comment::all();
    	return view('aboutresto.aboutresto',['for'=>$comments]);
    }
    public function addcomment(){         
        return view('aboutresto.aboutresto');
    }
    public function createcomment(Request $request){
        $add = new Comment();
        $add->nama=$request->nama;
        $add->email=$request->email;
        $add->comment=$request->comment;
        $add->save();
        return redirect('/aboutresto');
    }
}
