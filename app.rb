require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new = PigLatinizer.new
    @user_phrase = params[:user_phrase]
    "#{new.piglatinize(@user_phrase)}"
  end
end
