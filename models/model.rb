require 'careerjet/api_client'
require 'pp' 
require 'dotenv/load'
 
#  cj_api_client = Careerjet::APIClient.new(:locale=> :en_GB)

# puts cj_api_client.search(
#      :keywords   => 'ruby',
#      :location   => 'NY',
#      :affid      => '1f8f344630cdb44534351ce3cd6c2d0c',
#      :user_ip    => '11.22.33.44',
#      :user_agent => 'Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0',
#      :url        => 'http://www.example.com/jobsearch?q=ruby&l=london'
#  ).jobs.first
 
  def get_job_offer(api,keyword,location)#using user input to search to Job offer 
      
     
      api.search(
      :keywords   => keyword,
      :location   => location,
      :affid      => ENV['API_KEY'],
      :user_ip    => '11.22.33.44',
      :user_agent => 'Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0',
      :url        => 'http://www.example.com/jobsearch?q=ruby&l=london'
      ).jobs.first 
     
end     
