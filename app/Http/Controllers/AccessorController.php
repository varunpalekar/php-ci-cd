<?php
// app/Http/Controllers/AccessorController.php
namespace App\Http\Controllers;
 
use App\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
 
class AccessorController extends Controller
{
    public function index(Request $request)
    {
        // get the post-id from request params
        $post_id = $request->get("id", 0);
         
        // load the requested post
        $post = Post::find($post_id);
         
        // check the name property
        return $post->title;
    }
}