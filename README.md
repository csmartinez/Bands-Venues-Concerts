##Venue/Bands Organizer
Stores and lists venues and bands as a ONE-to-many relationship using Active Record database. I had previously made bands it's own table and concerts the join table to set up a many-to-many, but couldn't work through the drop down menu to choose from venues, and then bands, to create a new concert. I will eventually do it the right way again (has_and_belongs_to) and will probably need to reference this: http://www.theodinproject.com/ruby-on-rails/advanced-forms



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
