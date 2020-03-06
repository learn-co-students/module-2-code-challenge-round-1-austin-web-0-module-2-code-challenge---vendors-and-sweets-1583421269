Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendors
  resources :sweets
  resources :vendor_sweets
  #get '/sweets', to: "sweets#index"
  #get '/sweets/:id', to: "sweets#show"
  #get '/vendors', to: "vendors#index"
  #get '/vendors/:id', to: "vendors#show"
  #get '/vendorsweets', to: "vendorsweets#new"

end
