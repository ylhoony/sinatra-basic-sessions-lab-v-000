require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "Hello, World!"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    # @checkout = Checkout.new
    # @checkout.item = params[:item]


    @session[:item] = params[:item]
    @session = session
    erb :checkout
  end

end
