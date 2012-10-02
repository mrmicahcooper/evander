Evander::Application.routes.draw do

  match 'ui(/:action)', controller: 'ui'

  root to: 'pages#home'

  resources :pages, only: [:new, :create]

  get "/:slug", to: "pages#show", as: :slug
  get "/:slug/edit", to: "pages#edit", as: :edit_slug
  put "/:slug", to: "pages#update", as: :slug
  post "/:slug", to: "pages#destroy", as: :slug

end
