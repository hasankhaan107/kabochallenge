class ChargebeeJob < ApplicationJob
  include Chargebeepayment # including the Module instace methods
  queue_as :default  
  def perform(params)
		Chargebeepayment.charge(params)
  end
end