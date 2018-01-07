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

    @session = session
    @session[:item] = params[:item]

    erb :checkout
  end

end
