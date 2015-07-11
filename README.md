[![security](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master.svg)](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master)
[![Code Climate](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine/badges/gpa.svg)](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine)
[![Coverage Status](https://coveralls.io/repos/CoastDigitalGroup/cdg-subengine/badge.svg?branch=master&service=github)](https://coveralls.io/github/CoastDigitalGroup/cdg-subengine?branch=master)
[![Build Status](https://travis-ci.org/CoastDigitalGroup/cdg-subengine.svg?branch=master)](https://travis-ci.org/CoastDigitalGroup/cdg-subengine)

### CDG Subengine Documentation

Multi-Tenancy engine with devise authentication is easy to incorporate into any project. Documentation is in progress.

#### Step 1 - Add Subengine to your gemfile
    gem 'subengine', '~> 1.0.0'
    bundle exec install

#### Step 2 - Add and migrate subengine database tables
    rake railties:install:migrations  
    rake db:migrate

#### Step 3 - Configure ActionMailer
+ Mailer functions are required in order for subengine to operate.
+ Mailer is used for confirmation and password reset functions.

#### Step 4 - Mount the Engine in your Routes File
Add this line at the end of the routes file.  
  
    mount Subengine::Engine, :at => '/'

#### Step 5 - Constrain the routs you want secured
All the routes you want to have multi-tenacy login functions goes inbetween the constrainsts block.

    constraints(Subengine::Constraints::SubdomainRequired) do  
      # Routes Requiring Security & Multi-Tenancy Routes    
    end  
  
#### Step 6 - Add subengine extention to models
Add the subengine extension to the top of all models for the routes configured in the previous step.
  
    extend Subengine::ScopedTo

#### Step 7 - Add user model to your app
Generate a user.rb file and add the code blew 

    rails g model User  

    include Subengine::UserStorage

#### Step 8 - Configure scopes in your controller
Scope your controllers. Examples on github wiki or cdg-substarter app.

    .scoped_to(current_account)  

#### Having troubles ?
Example substarter app - <https://github.com/CoastDigitalGroup/cdg-substarter>  