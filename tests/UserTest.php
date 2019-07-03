<?php

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use App\User;
class UserTest extends TestCase
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

   public function test_user_can_created(){

         $User =  factory(App\User::class)->create();

         //$post_user = $User->create([
            //'title' => 'Hab_'.str_random(5),
            //'body'  => 'This Post is related to'.str_random(20),
            //'slug'  =>  str_random(10),

           // 'name'   => 'Varun',
            //'email'  => 'varun@nitorinfotech.com',
            //'password' => bcrypt('varun'),
           // 'remember_token' => str_random(10),


         //]);

         //$name = 'PrashantNitor';
         //$found_user = User::where('name', '=', $name)->first(); 
        // $this->assertEquals($found_user->name,'PrashantNitor');

        //$found_userId = User::find(33);
        //$this->assertEquals($found_userId->name,'PrashantNitor');
        //$this->seeInDatabase('users',['id'=>33,'name'=>'PrashantNitor']);

        //$found_userId = User::find(33);
        //$found_userId->delete();
        //$this->notSeeInDatabase('users',['name'=>'PrashantNitor']);
    }

    public function test_user_can_deleted(){

        //$User =  factory(App\User::class)->create();

        

          $name = 'PrashantNitor';
          $found_user = User::where('name', '=', $name)->first(); 
          $this->assertEquals($found_user->name,'PrashantNitor');

       //$found_userId = User::find(33);
       //$this->assertEquals($found_userId->name,'PrashantNitor');
       //$this->seeInDatabase('users',['id'=>33,'name'=>'PrashantNitor']);

       // Search by id and delete

       //$found_userId = User::find(40);
       //$found_userId->delete();
       //$this->notSeeInDatabase('users',['name'=>'Varun']);

        // Search by name and delete

        //$name = 'Asha Rohan';
        //$found_user = User::where('name', '=', $name)->first(); 
        //$this->assertEquals($found_user->name,'Varun');
        //$found_user->delete();
        //$this->notSeeInDatabase('users',['name'=>'Asha Rohan']);
   }
}
