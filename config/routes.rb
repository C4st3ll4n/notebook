Rails.application.routes.draw do
  resources :contacts
  get '/', to: 'contacts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
