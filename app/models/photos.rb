require 'rack'
require 'json'

class Photos < ActiveRecord::Base
  # def call(env)
  #   request = Rack::Request.new(env)
  #   response = Rack::Response.new

  #   photos = [
  #     { id: 1, title: 'Photo 1', source: '/images/photo1.jpg', },
  #     { id: 2, title: 'Photo 2', source: '/images/photo2.jpg', },
  #     { id: 3, title: 'Photo 3', source: '/images/photo3.jpg', },
  #     { id: 4, title: 'Photo 4', source: '/images/photo4.jpg', },
  #     { id: 5, title: 'Photo 5', source: '/images/photo5.jpg', },
  #     { id: 6, title: 'Photo 6', source: '/images/photo6.jpg', },
  #     { id: 7, title: 'Photo 7', source: '/images/photo7.jpg', },
  #     { id: 8, title: 'Photo 8', source: '/images/photo8.jpg', },
  #     { id: 9, title: 'Photo 9', source: '/images/photo9.jpg', }
  #   ]

  
end

# Rack::Handler::WEBrick.run PhotosApp.new, Port: 9292
