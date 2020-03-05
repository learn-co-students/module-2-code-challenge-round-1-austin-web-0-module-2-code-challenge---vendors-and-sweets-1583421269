Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sweets', to: "sweets#index"
  get '/sweets/show', to: "sweets#show"
  get '/vendors', to: "vendors#index"
  get '/vendors/show', to: "vendors#show"
  get '/vendorsweets', to: "vendorsweets#create"

end
