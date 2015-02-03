##Venue/Bands Organizer
Stores and lists venues and bands as a many-to-many relationship using Active Record database to create concerts with a concert date.


Ruby version 2.2

##Project Setup

1. `gem install bundler`
2. `gem install sinatra-activerecord`
3. `gem install rake`
4. `gem install bundler`
5.   `bundle`
6. in a separate tab in the terminal, enter 'postgres'
    run rake db:create in project folder, and then rake db:migrate
7.   `ruby app.rb`

8. go to https://localhost:4567 in web browser

##Tests

tests for ruby methods can be run using the rspec gem

`gem install rspec`
`rspec`

##Motivation

To practice creating a Ruby class and methods, Active Record, many-to-many relationships, using postgres databases.

##License

MIT License. Copyright 2015. Created by Carli Martinez
