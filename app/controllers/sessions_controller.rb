#get the login form 
get '/login'  do
  @user = User.new
  erb :'sessions/new' 
end