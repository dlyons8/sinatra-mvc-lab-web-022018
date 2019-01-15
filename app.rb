require_relative 'config/environment'

class App < Sinatra::Base

  get '/piglatinize/' do

  end

  post '/piglatinize/' do
    text_from_user = params[:user_text]
    @piglatinized = PigLatinizer.new.to_pig_latin(text_from_user)
    erb :user_input
  end

end
