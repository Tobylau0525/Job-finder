require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/result' do 
    
    # puts params
    @jobfinder = params[:jobfinder]
    
  
    
    erb :result
  end  
  
  
end
