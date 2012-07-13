# Houston Code Camp 2012

This is the site for Houston Code Camp 2012.  You can view it live at [http://houstoncodecamp.com].

The site runs on Rails 3.1.2 and is deployed on [http://heroku.com](Heroku).

[![Build Status](https://secure.travis-ci.org/Jared314/houston-code-camp-2011.png?branch=master)](http://travis-ci.org/Jared314/houston-code-camp-2011)

== DB Migrate for Test Environment

In theory rake db:migrate or rake db:test:prepare should prep the test database. But in some cases it doesn't.
To run db:migrate on the test environment

  rake environment RAILS_ENV=test db:migrate