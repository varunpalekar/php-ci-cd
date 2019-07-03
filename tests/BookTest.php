<?php
use App\Post;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class BookTest extends TestCase
{
    use DatabaseMigrations;
    /**
     * A basic test example.
     *
     * @return void
     */
    /*public function testExample()
    {
        $this->assertTrue(true);
    }*/

    /* @test */

    public function test_book_can_deleted(){
        //$Category =  factory(App\Category::class)->create();

      /*  $post = $Category->posts()->create([
            'title' => 'HabbitTest11',
            'body'  => 'HabbitTest11@gmail.com',
            'slug'  =>  str_random(10),
        ]);

        $post->delete();
         
        $this->notSeeInDatabase('posts',['id'=>26,'title'=>'HabbitTest11']); 

       */ 

     // $found_post = Post::find(25);
     // $name = 'Doyle Wunsch';
     // $found_post = Post::where('title', '=', $name)->first();
     // $found_post->delete();
     // $this->notSeeInDatabase('posts',['title'=>'Doyle Wunsch']);

      $title = 'Hab_NHlit';
      $found_post = Post::where('title', '=', $title)->first();
      $this->assertEquals($found_post->title,'Hab_NHlit');
        
    }

    public function test_book_can_created()
    {
        $Category =  factory(App\Category::class)->create();

        $post = $Category->posts()->create([
            'title' => 'Hab_'.str_random(5),
            'body'  => 'This Post is related to'.str_random(20),
            'slug'  =>  str_random(10),

            //'title' => 'HabbitTest',
            //'body'  => 'HabbitTest@gmail.com',
            //'slug'  =>  str_random(10),

        ]);

        //$found_post = Post::find(24);
        //$this->assertEquals($found_post->title,'HabbitTest');
        //$this->seeInDatabase('posts',['id'=>24,'title'=>'HabbitTest']);
    }

   


}
