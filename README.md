## Setup RSPEC

Install the required gems in the Gemfile `bundle install` .

Run `bundle binstubs rspec-core` to install the RSPEC binstubs. It creates an executable *bin/rspec*


## The .env file

Rename the `.env_example` file to `.env`

Specify the path of your driver files.


## Tests Conventions

Each test file should be stored in a folder named *spec*.

Every test file should contain the `_spec.rb` in the name.


## Execute Test Files

Run `bin/rspec` to execute every test file in the *spec* folder.

Run `bin/rspec path/to/test/file.rb` to execute an specific test file in the *spec* folder.

