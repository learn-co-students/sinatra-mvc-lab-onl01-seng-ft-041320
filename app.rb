require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        # @user_input = params[:user_phrase]
        @new_piglatin_input = PigLatinizer.new
        @piglatinized_input = @new_piglatin_input.piglatinize(params[:user_phrase])
        # binding.pry
        erb :piglatinize
    end
end