require_relative 'config/environment'
#require_relative 'models/piglatinizer'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @piglatin_phrase = PigLatinizer.new()

        @piglatin_phrase.piglatinize(params[:user_phrase])
    end
end