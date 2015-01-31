require("bundler/setup")
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

get('/venues/:id') do
  @venue = Venue.find(params.fetch("id").to_i())
  @bands = Band.all()
  erb(:venues)
end

post('/venues/:id') do
  id = params.fetch("id").to_i()
  bandname = params.fetch("bandname")
  @venue = Venue.find(params.fetch("id").to_i())
  @band = Band.create({:bandname => bandname, :venue_id => (params.fetch("id"))})
  erb(:venues)
end


post('/bands') do
  bandname = params.fetch('bandname')
  @band = Band.create({:bandname => bandname})
  redirect('/')
end

get('/bands/:id') do
  @band = Band.find(params.fetch("id").to_i())
  @venues = Venue.all()
  erb(:bands)
end
