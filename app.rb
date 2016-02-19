class ZestimatorApp < Sinatra::Base
require 'yaml/store'
require 'open-uri'

# require 'sinatra'
# require 'nokogiri'

#first just get things in and out of the zillow api
# url = 'http://www.zillow.com/webservice/GetSearchResults.htm'
# ID = 'X1-ZWz19un24nbeh7_4bx42'
# property_address = '76 Roberts Road'
# csz = '02155'
# call_url = url + "?zws-id=" + ID + "&address=" + property_address + "&citystatezip=" + csz
# @doc = Nokogiri::HTML(open(call_url))
# puts street = @doc.xpath("//street")
# puts city = @doc.xpath("//city")
# puts state = @doc.xpath("//state")
# puts zipcode = @doc.xpath("//zipcode")
# puts zestimate = @doc.xpath("//amount")
# puts zestimate_low = @doc.xpath("//low")
# puts zestimate_high = @doc.xpath("//high")

get '/' do
   	@title = 'Welcome to the Home Price Estimator!'
	erb :index
end

post '/' do
  	# 1. Create an idea based on the form parameters
  	idea = Idea.new
  	# 2. Store it
  	idea.save
  	# 3. Send us back to the index page to see all ideas
  	"Creating an IDEA!"
  end

post '/request' do
	@title = 'Your Home Price Estimate'
	url = 'http://www.zillow.com/webservice/GetSearchResults.htm'
	# @store = YAML::Store.new('requests.yml')
	# @store['address'] = address
	# @store['city'] = city
	# @store['state'] = state
	# @store['zipcode'] = zipcode
	erb :request

end

# post '/cast' do
# 	@title = 'Thanks for casting your vote!'
# 	@vote = params['vote']
# 	@store = YAML::Store.new 'votes.yml'
# 	@store.transaction do
# 		@store['votes'] ||= {}
# 		@store['votes'][@vote] ||= 0
# 		@store['votes'][@vote] += 1
# 	end
# 	erb :cast
# end

# get '/results' do
# 	@title = 'Results so far:'
# 	@store = YAML::Store.new 'votes.yml'
# 	@votes = @store.transaction { @store['votes'] }
# 	erb :results
# end

# PropertyInfo = {
#   'zws-id' => '',
#   'address' => 'Pizza',
#   'CUR' => 'Curry',
#   'NOO' => 'Noodles',
# }

end