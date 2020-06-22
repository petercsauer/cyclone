# app.rb
require("bundler")
Bundler.require


get '/download' do
  file = File.open("downloads.txt", "r")
  @current = file.read.to_i
  file.close
  @current=@current+1
  file = File.open("downloads.txt", "w")
  file.write(@current.to_s)
  file.close
  erb :download

end

get "/" do
  erb :index
end