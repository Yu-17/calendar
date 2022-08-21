Rails.application.routes.draw do

  resources :tasks

  get '/' => 'top#index'


end

