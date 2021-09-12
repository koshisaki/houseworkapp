Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/home', to: 'static_pages#home'
  get  '/help', to: 'static_pages#help'
  get  '/about', to: 'static_pages#about'
  get '/createroom', to: 'rooms#new'
  resources :rooms

  # https://railstutorial.jp/chapters/sign_up?version=5.0#code-users_resource

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
