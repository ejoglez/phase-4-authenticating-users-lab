Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'login', to: 'login#create'

  delete 'logout', to: 'login#destory'

  get 'me', to: 'users#show'
end

