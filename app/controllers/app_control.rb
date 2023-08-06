require 'sinatra'
require 'sinatra/activerecord'
# require './models/photo'
require 'json'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json' 
  
  # Add your routes here
  get "/photos" do 
    Photos.all.to_json
  end

patch "/photos/:id" do 
  photo = Photos.find(params[:id])
  if photo.update(params)
    { message: "Good luck with your project!" }.to_json
  else 
    { message: "error." }.to_json
  end
end

 
  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end
