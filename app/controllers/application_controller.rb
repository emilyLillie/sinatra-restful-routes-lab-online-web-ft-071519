class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipe/new' do 
    erb :new 
  end 
  
  post '/recipe' do 
    @recipe = Recipe.create(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])
    redirect to "/recipe/#{recipe.id}"
  end
  
  get '/recipes/:id' do 
    
  end 
  
  
  
  
end 
