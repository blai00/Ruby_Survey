class SurveysController < ApplicationController
	def index
		if !session[:views]
			session[:views] = 0
			# puts "#{session[:views]}" 
		end

		puts "#{session[:views]}"
	end

	# def process
	# 	session[:views] = session[:views] + 1
	# 	print params
	# 	session[:result] = params[:survey]
	# 	flash[:success] = "You successfull submitted this form #{session[:views]} time(s)"

	# 	redirect_to "surveys/result"
	# end 

	def result 
		@success_message = flash[:success]
		@results = session[:result]
	end 


end 