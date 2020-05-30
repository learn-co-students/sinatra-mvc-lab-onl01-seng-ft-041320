require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
      end
    
     post '/piglatinize' do
        new_piglatinizer = PigLatinizer.new
        @putinay_input = new_piglatinizer.piglatinize(params[:user_phrase])
        erb :piglatinize
      end

end