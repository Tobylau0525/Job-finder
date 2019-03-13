require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/result' do 
    cj_api_client = Careerjet::APIClient.new(:locale=> :en_GB)
    # puts params
    # @keyword = params[:keyword]
    # @location = params[:location]
    
   @job_offer = get_job_offer(cj_api_client,params[:keyword],params[:location])
    
    erb :result
  end  
  
  
end
