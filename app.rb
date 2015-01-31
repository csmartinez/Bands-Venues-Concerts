require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @concerts = Concert.all()
  @venues = Venue.all()
  erb(:index)
end

post('/venues') do
  venuename = params.fetch('venuename')
  @venue = Venue.create({:venuename => venuename})
  redirect('/')
end

get('/venues/:id') do
  @venue = Venue.find(params.fetch("id").to_i())
  @concerts = Concert.all()
  @venues = Venue.all()
  erb(:venues)
end

post('/venues/:id') do
  id = params.fetch("id").to_i()
  bandname = params.fetch("bandname")
  concert_date = params.fetch("concert_date")
  @venue = Venue.find(params.fetch("id").to_i())
  @concert = Concert.create({:concert_date => concert_date, :bandname => bandname, :venue_id => (params.fetch("id"))})
  erb(:venues)
end
