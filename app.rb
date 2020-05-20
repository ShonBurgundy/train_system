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