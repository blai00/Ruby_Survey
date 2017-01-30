class SurveysController < ApplicationController
	def index
		if !session[:views]
			session[:views] = 0 
		end
	end 

	def process_survey
		session[:views] = session[:views] + 1
		session[:result] = params[:survey]
		flash[:success] = "You successfull submitted this form #{session[:views]} time(s)"
		redirect_to "/surveys/results"
	end 

	def results
		
	end 


end 