require 'yaml/store'
class Zestimate
	def save
		database.transaction do |db|
    	db['zestimates'] ||= []
    	db['zestimates'] << {name: 'rachael burger', email: 'rachael@wordaroundtown.com', timeline: 'never', address: '76 roberts rd', city: 'medford', state: 'ma', zipcode: '02155', zestimate: '660000', zestimate_low: '610000', zestimate_high: '710000'}
  		end
  	end
	
	def database
    @database ||= YAML::Store.new "zestimates"
  	end

end