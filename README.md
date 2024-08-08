Installation
===========================
Using rails Rails 7.0.8.4
Using ruby 3.1.6
Datebase : postgres
====================
Install node, npm package for turbo and stimulus.

After installing above 

1. perform bundle install.
There is a posiblity of getting error with gem psych. if getting a error downgrade the gem version to 3.0.0

bin/rails turbo:install
bin/rails stimulus:install

perform the above two commands for making work the turbo and stimulus. 

After successfull bundle install

gem 'turbo-rails'
gem 'stimulus-rails'
gem 'webpacker'
gem pg

add these gems into the gem file bundle install again.

After successfull bundle install 

Perform 
 1. rake db:create
 2. rake db:migrate

 bin/rails tailwind-css:install

 Perform above command for default responsive view.

after all successfull execution of these above commands

perform 

 1. rails s

 start the rails server.

 after starting the server you can access the application in local macine localhost: 3000

 Thanks.

