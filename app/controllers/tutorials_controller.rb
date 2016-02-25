#INDEX
get '/tutorials' do 
  if params[:search] && !params[:search].empty?
    @tutorials = Tutorial.where("title LIKE :search",{ search: "%#{params[:search]}%"})
  else
    @tutorials = Tutorial.all 
  end


   erb :'tutorials/index'
end

# NEW
get "/tutorials/new" do
  @tutorial = Tutorial.new
  @categories = Category.all
  erb :"tutorials/new"
end


# CREATE
post "/tutorials" do
  @tutorial = Tutorial.new(params[:tutorial])
  if @tutorial.save
    redirect "/tutorials"
  else
    erb :"tutorials/new"
  end
end

# SHOW
get "/tutorials/:id" do
  @tutorial = Tutorial.find(params[:id])
  if @tutorial
    erb :"tutorials/show"
  else
    redirect "/tutorials"
  end
end

# EDIT
get "/tutorials/:id/edit" do
  @tutorial = Tutorial.find(params[:id])
  @categories = Category.all
  erb :"tutorials/edit"
end

# UPDATE
put '/tutorials/:id' do
   @tutorial = Tutorial.find(params[:id])
  if @tutorial.update(params[:tutorial])
    redirect "/tutorials/#{@tutorial.id}"
  else
    erb :"tutorials/show"
  end
end


# DESTROY
delete "/tutorials/:id" do
  tutorial = Tutorial.find(params[:id])
  tutorial.destroy
  redirect "/tutorials"
end

# VOTE
get "/tutorials/:id/vote" do
  vote = current_user.tutorial_votes.new(value: params[:value], tutorial_id: params[:id])
  if vote.save
    flash[:message] = "Thank you for voting"
    redirect "/tutorials"
  else
    flash[:danger] = "Unable to vote, perhaps you already did."
    redirect "/tutorials"
  end
end

