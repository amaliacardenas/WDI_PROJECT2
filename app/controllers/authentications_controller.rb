#get the form 
get '/register' do
 @user = User.new
 erb :'authentications/new' 
end