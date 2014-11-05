namespace '/photos' do
  get '/upload' do
    if login?
      @user = User.find_by(username: session[:username])
      @album = @user.albums
      erb :'/photos/new_upload'
    else
      session[:errors] = "failed"
      redirect "/users/login"
    end
  end

  post '/upload' do
    album = Album.find(params[:album_id])
    @photo = album.photos.build
    @photo.path = params[:path]
    @photo.save
    redirect "/albums/#{album.id}/photos/#{@photo.id}"
    # else
    #   session[:errors] = "failed to save photo"
    #   redirect "/photos/new_upload"

  end
end
