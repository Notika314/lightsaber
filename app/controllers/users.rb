get '/users/new' do
   <<-HTML
<form action='/users/new' method='POST'>
  Username: <input type='text' name='username' />
  Password: <input type='text' name='password' />
  <input type='submit' value='Go!' />
</form>
HTML
redirect '/'
end

post '/users/new' do
  @user = User.create(username: params[:username], password: params[:password])
  redirect '/'
end

put '/users/:id' do
  <<-HTML
<form action="/users/edit" method="POST">
  <input type="hidden" name="_method" value="PUT">
  <input type="text" name="password">
  <input type="submit" value="Update">
</form>
HTML
@user = User.find(params[:username])
@user.update(password: params[:password])
redirect '/'
end

delete '/users/:id' do
  @user = User.find(params[:username])
  @user.destroy
  redirect '/'
end