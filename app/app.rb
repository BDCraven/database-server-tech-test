require 'sinatra'

class DatabaseServer < Sinatra::Base

  get '/' do
    "Hello test server"
  end

  run! if app_file == $0
end
