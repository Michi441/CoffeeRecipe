Rails.application.routes.draw do
  resources :coffee_profiles do
    resources :recipes
  end 



  root 'coffee_profiles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
