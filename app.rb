require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    team = params
    @name = team["name"]
    @coach = team["coach"]
    @pg = team["pg"]
    @sg = team["sg"]
    @pf = team["pf"]
    @sf = team["sf"]
    @c = team["c"]
    erb :team
  end

end
