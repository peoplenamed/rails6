Rails.application.routes.draw do
  resources :messages
  devise_for :users, :controllers => { registrations: 'users/registrations' } do
    get '/users/sign_out' => 'users/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'main#index'

end
