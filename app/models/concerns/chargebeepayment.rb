module Chargebeepayment
	extend ActiveSupport::Concern # extending the ActiveSupport module Concerns class methods

	def self.charge(params)
		ChargeBee.configure({:api_key => ENV['API_KEY'] , :site => ENV['SITE']})
			result = ChargeBee::Subscription.create({
				:plan_id => ENV['PLAN'],
				id: params['customer_id'] 
			})
	end

end