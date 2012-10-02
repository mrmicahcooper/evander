Evander::Application.routes.draw do

  match 'ui(/:action)', controller: 'ui'

  root to: 'pages#home'

  resources :pages, only: [:new, :create]

  get '/sign_in', to: 'sessions#new', as: :sign_in
  post '/sign_in', to: 'sessions#create', as: :sign_in
  get '/sign_out', to: 'sessions#destroy', as: :sign_out

  get "/:slug", to: "pages#show", as: :slug
  get "/:slug/edit", to: "pages#edit", as: :edit_slug
  put "/:slug", to: "pages#update", as: :slug
  post "/:slug", to: "pages#destroy", as: :slug

end
