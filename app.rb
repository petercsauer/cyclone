# app.rb
require("bundler")
Bundler.require

get '/unavailable' do
  erb :download

end

get '/download' do
  file = File.open("downloads.txt", "r")
  @current = file.read.to_i
  file.close
  @current=@current+1
  file = File.open("downloads.txt", "w")
  file.write(@current.to_s)
  file.close
  redirect '/unavailable'
end

get "/" do
  erb :index
end