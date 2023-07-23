<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Storage;

class PostController extends Controller
{
    //createPage | Read
    public function create(Request $request) {
        $posts = Post::when(request('searchItem'), function($posts){
                $searchItem = request('searchItem');
                $posts->orWhere('title', 'like', '%' . $searchItem . "%")
                        -> orWhere('description', 'like', '%' . $searchItem . '%');
                })
                ->orderBy('created_at', 'desc')
                ->paginate(3);
        return view('create', compact('posts'));    //data passing with compact
    }

    //create posts | Create
    public function postCreate(Request $request) {
        $this->validation($request);

        //Create post
        $data = $this->getPostData($request);  //$this !important
        Post::create($data);
        return back()->with(['createSuccess' => 'Post is successfully created']);
    }

    //delete posts | Delete
    public function postDelete($id) {
        // Post::where('id', $id)->delete();
        // return back();
        Post::find($id)->delete();
        return back();
    }

    //detail
    public function postDetail($id) {
        $post = Post::where('id', $id)->first();
        return view('detail', compact('post'));
    }

    //update page
    public function updatePage($id){
        $post = Post::where('id', $id)->first()->toArray();
        return view ('update', compact('post'));
    }

    //update | Update
    public function update(Request $request) {
        // dd($request->id);
        $this->validation($request);

        //Delete img from folder
        $oldImgName = Post::where('id', $request->id)->pluck('image')->first();
        if($oldImgName != null) {
            Storage::delete('public/' . $oldImgName);
        }

        //Update Db
        $updatePost = $this->getPostData($request);
        Post::find($request->id)->update($updatePost);
        return redirect()->route('post#createPage')->with(['updateSuccess'=>'Updated Successfully']);
    }

    //Private functions
    //Private fn for retrieving data
    private function getPostData($request) {
        $arr = [
            'title' => $request->postTitle,
            'description' => $request->postDescription,
            'price' => $request->price,
            'address' => $request->address,
            'rating' => $request->rating
        ];
        //store img
        if($request->hasFile('image')){
            $imgName = uniqid() . $request->file('image')->getClientOriginalName();
            $request->file('image')->storeAs('public', $imgName);
            $arr['image'] = $imgName;
        } else{
            $arr['image'] = null;
        }
        return $arr;
    }

    //Private validation fn for input data
    private function validation($request) {
        $validationRules = [
            'postTitle' => 'bail|required|min:5|unique:posts,title,'.$request->id,
            'postDescription' => 'required',
            'price' => 'required|numeric',
            'address' => 'required',
            'rating' => 'required|numeric|min:1|max:5',
            'image' => 'mimes:jpg,jpeg,png|file|max:5120'
        ];
        $validationMessage = [
            'postTitle.required' => 'ပို့စ်ခေါင်းစဉ် လိုအပ်ပါသည်။',
            'postDescription.required' => 'ပို့စ်ဖော်ပြချက် လိုအပ်ပါသည်။',
            'postTitle.min' => 'ပို့စ်ခေါင်းစဉ်အတွက် အနည်းဆုံးတန်ဖိုးမှာ 5 ဖြစ်သည်။',
            'postTitle.unique' => 'ပို့စ်ခေါင်းစဉ်ကို ယူထားပြီးဖြစ်သည်။ ပို့စ်ခေါင်းစဉ် ကွဲပြားရပါမည်။',
            'price.required' => 'စျေးနှုန်းလိုအပ်ပါသည်။',
            'address.required' => 'လိပ်စာ လိုအပ်ပါသည်။',
            'rating.required' => 'ratingသတ်မှတ်ရန် လိုအပ်ပါသည်။',
            'rating.min' => 'အဆင့်သတ်မှတ်ချက်အတွက် အနည်းဆုံး ကြယ် ၁ ပွင့် လိုအပ်သည်။',
            'rating.max' => 'အဆင့်သတ်မှတ်ချက်အတွက် အများဆုံး ကြယ် ၅ ပွင့် လိုအပ်သည်။',
        ];
        Validator::make($request->all(), $validationRules, $validationMessage)->validate();
    }
}
