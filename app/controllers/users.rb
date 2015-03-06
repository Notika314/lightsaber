get '/users/new' do
  erb :"authentication/signup"
end


get '/users/login' do
  erb :"authentication/signin"
end

get "/users/logout" do
  session[:user_id] = nil
  redirect '/'
end

delete '/users/:id' do
  @user = User.find(params[:username])
  @user.destroy
  redirect '/'
end

