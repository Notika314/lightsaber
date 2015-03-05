get '/' do
  erb :index
end
get '/users/show' do
   <<-HTML
<h1>title</h1>
<p>some text</p>
<p>more text</p>
<img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQJa5uFJrB7rpN04NsQRR-c4nlPX4xf9Ik43ilS6IOncK_0Z7W7Bw" alt="The official HTML5 Icon">
 HTML
 end