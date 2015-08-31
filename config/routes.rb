Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'

  get 'home', controller: 'pages', action: 'home'

  get 'contact', controller: 'pages', action: 'contact'

  get 'constitution', controller: 'pages', action: 'constitution'

  get 'testing', controller: 'pages', action: 'testing'

  get 'about', controller: 'pages', action: 'about'

  get 'news', controller: 'pages', action: 'news'

  get 'history', controller: 'pages', action: 'history'

  get 'find', controller: 'pages', action: 'find'

  get 'members', controller: 'pages', action: 'members'

  get 'chairman', controller: 'pages', action: 'chairman'

  get 'directory', controller: 'pages', action: 'directory'

  get 'news1', controller: 'pages', action: 'news1'

  get 'gallery', controller: 'pages', action: 'gallery'

  get 'events', controller: 'pages', action: 'events'

  get 'news2', controller: 'pages', action: 'news2'

  resources :pages

  get 'news3', controller: 'pages', action: 'news3'

  get 'news4', controller: 'pages', action: 'news4'

  get 'news5', controller: 'pages', action: 'news5'

  get 'admin', to: 'admin#index'
  scope :admin do
    resources :pages, only: [:edit, :new] do
      get :index, on: :collection, action: 'admin_index', as: 'admin_index'
    end
  end
end
