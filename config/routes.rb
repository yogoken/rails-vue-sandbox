Rails.application.routes.draw do
  root to: 'homes#index'
  post 'homes' => 'homes#create'
  get  'homes/new' => 'homes#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
