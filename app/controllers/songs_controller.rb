require 'sinatra/base'
require 'rack-flash'

class SongsController < Sinatra::Base
  enable :sessions
  use Rack::Flash
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

<<<<<<< HEAD
 get '/songs' do 
  @songs = Song.all 
  erb :'songs/index'
 end

 get '/songs/new' do
  erb :'/songs/new'
end 

get '/songs/:slug' do
  @song = Song.find_by_slug(params[:slug])
  erb :'songs/show'
end
=======
<<<<<<< HEAD
 # get songs - show songs 
=======

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end
>>>>>>> 4e30d500761fa88f35f5b067585905d48e883d29

 # get songs/new - shows all artists and genres 
>>>>>>> 68c8662efcaf94a48fc879b22e6f984c991c02fb

post '/songs' do
  @song = Song.create(params[:song])
  @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
  @song.genre_ids = params[:genres]
  @song.save

  flash[:message] = "Successfully created song."
  redirect("/songs/#{@song.slug}")
end

get '/songs/:slug/edit' do
  @song = Song.find_by_slug(params[:slug])
  erb :'songs/edit'
end

patch '/songs/:slug' do
  @song = Song.find_by_slug(params[:slug])
  @song.update(params[:song])
  @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
  @song.genre_ids = params[:genres]
  @song.save

  flash[:message] = "Successfully updated song."
  redirect("/songs/#{@song.slug}")
end
end