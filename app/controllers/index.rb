enable :sessions

def login?
  if session[:username].nil?
    return false
  else
    return true
  end
end

def username
  return session[:username]
end

get '/' do
  # @photos = Photo.all
  erb :'index'
end



