require 'sinatra/base'
require 'rack-flash'

class SongsController < Sinatra::Base
  enable :sessions
  use Rack::Flash
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

 # get songs - show songs 

 # get songs/new - shows all artists and genres 

 # get song/sluhg - sgoifies songsd by params 

 # get songs/slugedit - finds song by slug params and shows genres

 # patch song/slug - shows and updates songs 

 # post songs - creates song and redirects to songs page 

end
