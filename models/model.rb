require 'careerjet/api_client'
require 'pp' 
 
 cj_api_client = Careerjet::APIClient.new(:locale=> :en_GB)

# puts cj_api_client.search(
#      :keywords   => 'ruby',
#      :location   => 'NY',
#      :affid      => '1f8f344630cdb44534351ce3cd6c2d0c',
#      :user_ip    => '11.22.33.44',
#      :user_agent => 'Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0',
#      :url        => 'http://www.example.com/jobsearch?q=ruby&l=london'
#  ).jobs.first
 
  def get_job_offer(api,language,location)
      
   
      pp api.search(
      :keywords   => language,
      :location   => location,
      :affid      => '1f8f344630cdb44534351ce3cd6c2d0c',
      :user_ip    => '11.22.33.44',
      :user_agent => 'Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0',
      :url        => 'http://www.example.com/jobsearch?q=ruby&l=london'
  ).jobs.first
 
 
     
end     


# class Job
#     attr_accessor :api,:language,:location
   
#     def initialize(cj_api_client,programming_language,location)
#         @api=cj_api_client
#         @language=programming_language
#         @location=location
      
#     end  
   
#     def get_job_offer
      
   
#         pp api.search(
#             :keywords   => language,
#             :location   => location,
#             :affid      => '1f8f344630cdb44534351ce3cd6c2d0c',
#             :user_ip    => '11.22.33.44',
#             :user_agent => 'Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0',
#             :url        => 'http://www.example.com/jobsearch?q=ruby&l=london'
#         ).jobs.first
 
 
     
#     end  
 
# end    

get_job_offer(cj_api_client,'ruby','NY')

# ruby=Job.new(cj_api_client,'ruby','NY')
# puts ruby.get_job_offer

# company="Talent Point Ltd" 
# date="Sun, 03 Mar 2019 08:47:59 GMT" 
# description="Do you love working with <b>Ruby</b>?   
# Do you like learning new technologies?   
# This is a brand new opportunity to be able... 
# to learn Clojure and work within one of the Best <b>Ruby</b> 

# Environments in London.   
# You will be joining a company..." 
# locations="London" 
# salary="&pound;85000 - 95000 per year" 
# salary_currency_code="GBP" 
# salary_max="95000" salary_min="85000" salary_type="Y" 
# site="" title="Lead Ruby Developer" 
# url="http://jobviewtrack.com/en-gb/job-1d48416148050b4e63115606040e1e021722261d0b0a0a6f585b4808001e420622270d170b0b0a50111a6b215f49442f61010e0a2645125a515557/16a825f64b79d8a6ba3fe08a8504018e.html?affid=1f8f344630cdb44534351ce3cd6c2d0c">