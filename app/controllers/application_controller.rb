class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipe/new' do 
    erb :new 
  end 
  
  post '/recipe' do 
    

end
