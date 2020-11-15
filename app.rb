require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @word_to_use = PigLatinizer.new(params[:word])
    erb :piglatinize
  end

  get '/piglatinize' do
    erb :piglatinize
  end

end
