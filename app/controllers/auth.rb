post '/authentication/register_user' do
  if params[:password] == params[:password_confirm]
    user = User.create(username: params[:username], password: params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '?error=true'
  end
end

post '/authentication/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '?error=true'
  end
end