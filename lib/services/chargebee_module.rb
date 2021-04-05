module ChargebeeModule
  def self.charge
  	puts "=================================="
  	ChargeBee.configure({:api_key => "test_GBI9yn4Pume8SEcuwXVNBIrkMLcdOk9WJ3" , :site => "kabo-test"})
		result = ChargeBee::Subscription.create({
			:plan_id => "no_trial",
			id: "Azyu6SSPJ8rkc13yX" 
		})
  end
end
