require('sinatra')
require('sinatra/reloader')
require('./lib/train')
require('./lib/city')
require('pry')
require('pg')
also_reload('lib/**/*.rb')
enable :sessions

DB = PG.connect({:dbname => "train_system"})

get('/') do
  @cities = City.all()
  @trains = Train.all()
  erb(:homepage)
end

get('/homepage') do
  @cities = City.all()
  @trains = Train.all()
  erb(:homepage)
end

get('/login') do
  erb(:login)
end

get('/edit') do
  erb(:edit)
end

get('/train/:id') do
  @train = Train.find(params[:id].to_i())
  erb(:train)
end

post('/trains') do
  name = params[:train_name]
  train = Train.new({:name => name, :id => nil})
  train.save()
  @cities = City.all()
  @trains = Train.all()
  erb(:homepage)
end

patch('/trains/:id') do
  @train = Train.find(params[:id].to_i())
  @train.update({:name => params[:train_name]})
  @trains = Train.all()
  @cities = City.all()
  erb(:homepage)
end

delete('/trains/:id') do
  @train = Train.find(params[:id].to_i)
  @train.delete
  @cities = City.all()
  @trains = Train.all()
  erb(:homepage)
end

# -----------  CITIES  -----------

get('/city/:id') do
  @city = City.find(params[:id].to_i())
  erb(:city)
end

post('/city') do
  name = params[:city_name]
  city = City.new({:name => name, :id => nil})
  city.save()
  @cities = City.all()
  @trains = Train.all()
  erb(:homepage)
end

patch('/city/:id') do
  @city = City.find(params[:id].to_i())
  @city.update({:name => params[:city_name]})
  @trains = Train.all()
  @cities = City.all()
  erb(:homepage)
end


delete('/city/:id') do
  @city = City.find(params[:id].to_i)
  @city.delete
  @cities = City.all()
  @trains = Train.all()
  erb(:homepage)
end
