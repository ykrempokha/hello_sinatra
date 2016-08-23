require 'sinatra'

get '/' do
  'Hello, Sinatra'
end

get '/about' do
  'This app is my first Sinatra App!'
end

get '/roll-die' do
  "Your die roll is...#{rand(1..6)}"
end

get '/greet/:name' do
  "Hello there #{params[:name].capitalize}"
end

get '/square/:number' do
  number = params[:number].to_i
  "The square of #{number} is #{number ** 2}"
end

get '/sinatra' do
  '<h3>I love <a href="http://www.sinatrarb.com/">Sinatra</a>!</h3>'
end

get '/cat' do
  send_file 'cat.html'
end

get '/home' do
  erb :home
end
