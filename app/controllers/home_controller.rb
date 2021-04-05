class HomeController < ApplicationController
  include Chargebeepayment
  def index
  end

  def charge
  	begin
  		# For calling the Sidekiq Job
  		# ChargebeeJob.perform_now(params) 
  		
  		# For Calling from controller.
  		Chargebeepayment.charge(params)
  	rescue Exception => e
  		puts "Something went wrong.        #{e}"
  	end
  	redirect_to '/'
  end
end
