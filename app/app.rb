require 'sinatra'

class DatabaseServer < Sinatra::Base
set :port, 4000
database_memory = {}

  get '/' do
    "Hello test server"
  end

  get '/set?' do
    database_memory.merge!(params)
    params[:somekey]
    # without this line 13 = rackup error: Rack::Lint::LintError: Body yielded non-string value ["somekey", "somevalue"]
  end

  get '/get?' do
    database_memory[params[:key]]
  end

  run! if app_file == $0
end
