class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes/new' do 
    erb :new 
  end 
  
  post '/recipes' do 
    @recipe = Recipe.create(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])
    redirect to "/recipe/#{recipe.id}"
  end
  
  get '/recipes/:id' do 
    @recipe = Recipe.find_by_id(params[:id])
    erb :show 
  end 
  
  get '/recipes/edit/:id' do 
    

  
end 
