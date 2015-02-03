require("bundler/setup")
require("pry")
Bundler.require(:default)


Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @concerts = Concert.all()
  @venues = Venue.all()
  @bands = Band.all()
  erb(:index)
end

post('/venues') do
  venuename = params.fetch('venuename')
  @venue = Venue.create({:venuename => venuename})
  redirect('/')
end

post('/bands') do
  bandname = params.fetch('bandname')
  @band = Band.create({:bandname => bandname})
  redirect('/addband')
end

post('/concerts') do
  concert_date = params.fetch('concert_date')
  band_id = params.fetch('band_id')
  venue_id = params.fetch('venue_id')
  @concert = Concert.create({:concert_date => concert_date, :band_id => band_id, :venue_id => venue_id})
  redirect('/addconcert')
end

get('/addconcert') do
  @concerts = Concert.all()
  @venues = Venue.all()
  @bands = Band.all()
  erb(:addconcert)
end

get('/addband') do
  @concerts = Concert.all()
  @venues = Venue.all()
  @bands = Band.all()
  erb(:addband)
end

get('/addvenue') do
  @concerts = Concert.all()
  @venues = Venue.all()
  @bands = Band.all()
  erb(:addvenue)
end
# get('/venues/:id') do
#   @venue = Venue.find(params.fetch("id").to_i())
#   @concerts = Concert.all()
#   @venues = Venue.all()
#   erb(:venues)
# end

# post('/venues/:id') do
#   id = params.fetch("id").to_i()
#   bandname = params.fetch("bandname")
#   concert_date = params.fetch("concert_date")
#   @venue = Venue.find(params.fetch("id").to_i())
#   @concert = Concert.create({:concert_date => concert_date, :bandname => bandname, :venue_id => (params.fetch("id"))})
#   erb(:venues)
# end
