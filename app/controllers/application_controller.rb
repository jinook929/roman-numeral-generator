class Application_controller < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }

  get '/' do
    erb :index
  end

  post '/roman' do
    @number = params[:number]
    @roman = RomanNumeralGenerator.numeralize(@number.to_i)
    erb :show
  end

end
