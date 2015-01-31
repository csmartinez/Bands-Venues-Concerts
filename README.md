##Venue/Bands Organizer
Stores and lists venues and bands as a ONE-to-many relationship using Active Record database. Currently the tables don't seem to have any relationship at all with each other though. I experimented with a many-to-many relationship with a "has many through" type thing but decided to take a step back, not finding a good template for an app.rb to reference about it. For some reason deleting the join table ruins everything, even though I've had success in the past not using one for a one-to-many. I considered dropping the database and making another, as well as dropping the third class and not using index on the new tables. Maybe have the bandname in the concert table next time? Then on the venue page just add concerts.

Ruby version 2.2

##Project Setup

1. `gem install bundler`
2. `gem install sinatra-activerecord`
3. `gem install rake`
4. `gem install bundler`
5.   `bundle`
6. in a separate tab in the terminal, enter 'postgres'
7.   `ruby app.rb`

8. go to https://localhost:4567 in web browser

##Tests

tests for ruby methods can be run using the rspec gem

`gem install rspec`
`rspec`

##Motivation

To practice creating a Ruby class and methods, Active Record, one-to-many relationships, using postgres databases.

##License

MIT License. Copyright 2015. Created by Carli Martinez
