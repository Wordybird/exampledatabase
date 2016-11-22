require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/pizza.rb')

get "/pizzas" do
  @pizzas=Pizza.all()
  erb(:index)
end

get '/pizzas/new' do
  erb(:new)
end

post '/pizzas' do
  pizza= Pizza.new(params)
  pizza.save()
  redirect to('/pizzas')
end

post '/pizzas/:id/delete' do
  Pizza.destroy(params[:id])
  redirect to('/pizzas')
end

get '/pizzas/:id' do
  @pizza=Pizza.find(params[:id])
  erb(:show)
end

get '/pizzas/:id/edit' do
  @pizza=Pizza.find(params[:id])
  erb(:edit)
end

post '/pizzas/:id' do
  Pizza.update(params)
  redirect to ("/pizzas/#{params[:id]}")
end

#Beware of putting : statements above statements with the same number of branches but no :. It doesn't end well.

#RESTFUL API REFERENCE SHEET 
#NEW: GET 'things/new'
#CREATE: POST 'things'
#SHOW: GET 'things/:id'
#UPDATE: POST 'things/:id'
#EDIT : GET 'things/:id/edit'
#DELETE: POST 'things/:id/delete'
#ALL: GET 'things'