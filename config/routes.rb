Rails.application.routes.draw do
  resources :messages

  resources :business_dashes

  get 'co/index'
  get 'me/profile' => "people#show"

  devise_for :accounts
  resources :businesses do
    get 'employees'
    get 'customers'
    get 'messages'
  end

  resources :postal_addresses

  resources :people

  root 'people#index'
  
end
