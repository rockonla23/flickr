namespace '/users' do
  get '/create' do
  @photo = Photo.all
    erb :'/users/sign_up'
  end

  post'/create_new' do
    @user = User.create(name: params[:name], username: params[:username], email:params[:email], password: params[:password])
    @user.albums.create(name:'default')

  erb :index
end

get '/sign_up' do

  erb :'/users/sign_up'
end

get '/login' do

  erb :'/users/login'
end

post '/login' do
  @user = User.authenticate(params[:email], params[:password])
   if @user
     session[:username] = @user[:username]
     redirect '/'
   else
     erb :'/users/invalid'
   end

end

get '/logout' do
  session[:username] = nil
  redirect "/"
end

get '/users/:id' do
  @user = User.find params[:id]
  @albums = @user.albums

  erb :"/users/particular_users"
end
end