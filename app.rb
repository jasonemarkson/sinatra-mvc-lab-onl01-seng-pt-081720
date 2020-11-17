require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pg = PigLatinizer.new
        @words = params[:user_phrase]

        erb :final_view
    end

end