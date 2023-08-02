require 'rack'
require 'json'

class PhotosApp
  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new

    photos = [
      { id: 1, title: 'Photo 1', source: '/images/photo1.jpg', },
      { id: 2, title: 'Photo 2', source: '/images/photo2.jpg', },
      { id: 3, title: 'Photo 3', source: '/images/photo3.jpg', },
      { id: 4, title: 'Photo 4', source: '/images/photo4.jpg', },
      { id: 5, title: 'Photo 5', source: '/images/photo5.jpg', },
      { id: 6, title: 'Photo 6', source: '/images/photo6.jpg', },
      { id: 7, title: 'Photo 7', source: '/images/photo7.jpg', },
      { id: 8, title: 'Photo 8', source: '/images/photo8.jpg', },
      { id: 9, title: 'Photo 9', source: '/images/photo9.jpg', }
    ]

    if request.path_info == '/photos' && request.get?
      response['Content-Type'] = 'application/json'
      response.write(JSON.generate(photos))
    elsif request.path_info.start_with?('/photos/') && request.delete?
      photo_id = request.path_info.split('/').last.to_i
      photo_index = photos.index { |photo| photo[:id] == photo_id }

      if photo_index
        photos.delete_at(photo_index)
        response.status = 204
      else
        response.status = 404
      end
    elsif request.path_info.start_with?('/photos/') && request.post?
      photo_id = request.path_info.split('/').last.to_i
      photo = photos.find { |p| p[:id] == photo_id }

      if photo
        response['Content-Type'] = 'text/plain'
        response.write("Congratulations! You have purchased #{photo[:title]}.")
        response.status = 200
      else
        response.status = 404
      end
    else
      response.status = 404
    end

    response.finish
  end
end

Rack::Handler::WEBrick.run PhotosApp.new, Port: 9292
