# How To Build a (Basic) Blog with Laravel

1)Open your .env file and change the database name (DB_DATABASE)
2)To Migrate DB use following command
   >> Run php artisan migrate
   
3)To Run DB Seeding(dummy data); 

 >> php artisan db:seed --class=UsersTableSeeder
 >> php artisan db:seed --class=PostsTableSeeder
 >> php artisan db:seed --class=PostsTableSeeder
 
 4)To Run Test Cases
 
 >> Run phpunit