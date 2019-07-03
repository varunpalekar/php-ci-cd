<?php
//namespace Tests\Unit;

//use AccessorTest\TestCase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Support\Facades\DB;
//use App\Post;

class AccessorTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testExample()
    {
        $this->assertTrue(true);
    }

    /**
     * Test accessor method
     *
     * @return void
     */
    /*public function testAccessorTest()
    {
        // load post manually first
        $db_post = DB::select('select title from posts where id = 1');
        //echo "<pre>title";
        //print($db_post[0]);
        $db_post_title = ucfirst($db_post[0]->title);
         //exit;
        // load post using Eloquent
        $model_post = Post::find(1);
        $model_post_title = $model_post->title;
         
        $this->assertEquals($db_post_title, $model_post_title);
    }*/

    /**
     * A basic test example.
     *
     * @return void
     */
    /*public function testBasicTest()
    {
        // load post manually first
        $db_post = DB::select('select title from posts where id = 1');
        $db_post_title = ucfirst($db_post[0]->title);
 
        //$response = $this->get('http://localhost/laravel_blog/public/accessor/index?id=1');

        $response = $this->get('/accessor/index?id=1');
 
        $response->assertStatus(200);
        $response->assertSeeText($db_post_title);
    }*/
}
