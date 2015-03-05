get '/users/new' do
   erb :"users/new"
end

post '/users/:id' do
  @user = User.create(username: params[:username], password: params[:password])
  redirect '/'
end

put '/users/:id' do

end

delete '/users/:id' do
  @user = User.find(params[:username])
  @user.destroy
  redirect '/'
end