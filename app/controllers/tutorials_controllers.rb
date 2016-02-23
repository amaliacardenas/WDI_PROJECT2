# INDEX
get "/tutorials" do
  @tutorials = Tutorial.all
  erb :"tutorials/index"
  end

# NEW
get "/tutorials/new" do
  @tutrials = Tutorial.new
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
  erb :"tutorials/edit"
end

# UPDATE
put '/tutorials/:id' do
   @tutorial = Tutorial.find(params[:id])
  if @tutorial.update(params[:tutorial])
    redirect "/tutorial/#{@tutorial.id}"
  else
    erb :"tutorials/show"
  end
end
