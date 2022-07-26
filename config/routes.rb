Rails.application.routes.draw do

  resources :tasks

  get 'top/index' => 'top#index'


end

