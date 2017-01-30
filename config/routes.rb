Rails.application.routes.draw do
	root "surveys#index"
	get '/surveys' => 'surveys#index'
	get '/surveys/results' => 'surveys#results'
	post 'surveys' => 'surveys#process'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
