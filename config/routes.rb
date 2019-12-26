Rails.application.routes.draw do
  get 'pages/home'
  devise_for :studios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 'animes#index'
  resources :animes, :characters
  root "pages#home"

  get "animes", to: "animes#index"
  get "animes/:id", to: "animes#show" # , as: :animes
  get "animes/new", to: "animes#new"
  post "animes", to: "animes#create"
  get "animes/:id/edit", to: "animes#edit", as: :animes_edit
  patch "animes/:id", to: "animes#update"
  delete "animes/:id", to: "animes#destroy"

  get "characters/new", to: "characters#new"
  post "characters", to: "characters#create"
  get "characters/:id/edit", to: "characters#edit", as: :characters_edit
  patch "characters/:id", to: "characters#update"
  delete "characters/:id", to: "characters#destroy"

  get 'pages/allAnime'
  get 'pages/home'
  get 'pages/Movie'
  get 'pages/Series'


end
