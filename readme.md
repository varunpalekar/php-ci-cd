Introduction
===========

This repository shows complete CI/CD of sample PHP project. We are going to use following tools/technologies:

1. Jenkins: For integration various tools and technologies
2. PHP project in Laravel: We are having one blog project by using PHP laravel framework
3. Ansible: For deployment on dev and prod 
4. Docker with docker-compose: For using deployment on local, dev and prod env
5. Sonarqube: Using sonarqube.io server of static code analysis and code coverage report
6. Branching: Following git-flow branching strategy
7. Using opencensus for distributed tracing

Folder structure
================

```
├── ansible                         => ansible folder
│   ├── hosts-dev                   => ansible hosts file for dev
│   ├── hosts-prod                  => ansible hosts file for prod
│   ├── playbook.yml                => ansible playbook
│   ├── requirements.yml            => ansible-galaxy requirement file for other role
│   ├── roles                       => ansible role folder
│   │   └── deployment              => ansible main role for deployment
│   ├── vagrant                     => vagrant file need to share if you are using vagrant
│   ├── Vagrantfile                 => vagrantfile for creating dev and prod env if you want to create in an automated way
│   └── vars                        => ansible folder having some extra variable
│       ├── dev.yml                 => ansible variable file for dev env
│       └── prod.yml                => ansible variable file for prod env
├── app                             => Laravel app folder
├── artisan                         => Laravel artisan file
├── bootstrap                       => Laravel bootstrap folder
├── composer.json                   => PHP composer file
├── composer.lock                   => PHP composer lock file
├── config                          => Laravel config folder
├── database                        => Laravel database folder
│   ├── factories                   => Laravel factories folder which used for seeding
│   │   └── ModelFactory.php
│   ├── migrations                  => Laravel migration folder used for database migration
│   │   ├── 2014_10_12_000000_create_users_table.php
│   │   ├── 2014_10_12_100000_create_password_resets_table.php
│   │   ├── 2016_02_06_175142_create_posts_table.php
│   │   ├── 2016_03_20_162017_add_slug_to_users.php
│   │   ├── 2016_04_28_021908_create_categories_table.php
│   │   ├── 2016_04_28_022255_add_category_id_to_posts.php
│   │   ├── 2016_05_30_153615_create_tags_table.php
│   │   ├── 2016_05_30_155417_create_post_tag_table.php
│   │   ├── 2016_07_16_173641_create_comments_table.php
│   │   ├── 2016_08_15_000718_add_image_col_to_posts.php
│   │   └── 2019_06_28_133124_create_books_table.php
│   └── seeds                       => Laravel seeds folder used for database seeding
│       ├── BookTableSeeder.php
│       ├── CategoryTableSeeder.php
│       ├── DatabaseSeeder.php
│       ├── PostsTableSeeder.php
│       └── UsersTableSeeder.php
├── docker                          => Folder contains some configuration file used by docker container
│   ├── mysql
│   │   └── my.cnf                  => default configuration file for mysql used in local and dev env only, in prodution we prefer to use standalone managed mysql database
│   ├── nginx                       
│   │   └── conf.d
│   │       └── laravel.conf        => Nginx configuration used for docker container (all env)
│   ├── php
│   │   └── local.ini               => Php configuration used for docker container (all env)
├── docker-compose.local.yml        => Docker-compose override file for local deployment using docker
├── docker-compose.yml              => Default docker-compose file shared by all env
├── Dockerfile                      => Dockerfile used to build default php application docker container
├── gulpfile.js                     => Laravel gulpfile
├── Jenkinsfile                     => Jenkinsfile in which all CI/CD defined for this project
├── package.json                    => Default composer package.json
├── phpunit.xml
├── public                          => Laravel public folder
├── resources                       => Laravel resources folder
├── server.php                      => Laravel server file
├── sonar-project.properties        => sonar-scanner properties file related to project
├── storage                         => Laravel storage folder
└── tests                           => Php unit test folder
```

Jenkins
=======

You can directly use jenkinsfile for all CI/CD. I am suggesting to use jenkins ocean blue to add pipeline by git project simply. Just go to new pipeline and add by using git URL.

Deployment
==========

### Local deployment

1. Requirement:  
   1. docker 
   2. docker-compose
   3. php-cli with composer 

2. Deployment 

   Run following command to deploy the project on local system by using docker-compose 

   ```
   docker-compose -f docker-compose.yml -f docker-compose.local.yml up -d
   ```

3. Install project dependencies

   ```
   composer install
   ```

4. Run migration

   ```
   docker-compose -f docker-compose.yml -f docker-compose.local.yml exec app php artisan migrate
   ```

5. Run seeding

   ```
   docker-compose -f docker-compose.yml -f docker-compose.local.yml exec app php db:seed --class=UsersTableSeeder
   docker-compose -f docker-compose.yml -f docker-compose.local.yml exec app php db:seed --class=PostsTableSeeder
   docker-compose -f docker-compose.yml -f docker-compose.local.yml exec app php db:seed --class=PostsTableSeeder

   ```

6. Application access 

   Now you can access your application by using URL `http://localhost/`

7. Distributed tracing in Jaeger UI

   You can access Jaeger UI to see distributed tracing of you running application `http://localhost:16686`

### Dev deployment

Please use jenkins-pipeline for deployment on dev.

We are using ansible for deployment on dev. Please change `ansible/hosts-dev` for changing deployment node for dev. By default it run ansible playbook on all hosts.

### Prod deployment

Please use jenkins-pipeline for deployment on prod

We are using ansible for deployment on dev. Please change `ansible/hosts-prod` for changing deployment node for dev. By default it run ansible playbook on all hosts.
