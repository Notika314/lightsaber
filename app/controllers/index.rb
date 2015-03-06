get '/' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :index
end

get '/users/show' do
   <<-HTML
<h1>Working title: title</h1>
<p>Natalia is the Queen of everything!</p>
<img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQJa5uFJrB7rpN04NsQRR-c4nlPX4xf9Ik43ilS6IOncK_0Z7W7Bw" alt="The official HTML5 Icon">
 HTML
 end