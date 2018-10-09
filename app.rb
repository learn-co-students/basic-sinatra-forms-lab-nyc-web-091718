require 'sinatra/base'

class App < Sinatra::Base

#DO THE LOGIC IN THE CONTROLLER FILE NOT THE VIEWS FILE
#different verb
  get '/newteam' do
    erb :newteam
  end

  post '/team' do
  @name = params[:name]
   @coach = params[:coach]
   @pg = params[:pg]
   @sg = params[:sg]
   @sf = params[:sf]
   @pf = params[:pf]
   @c = params[:c]
   erb :team
    # new_team = Class.create(params) - commited to database
    # {params[:name]}
  end


end
