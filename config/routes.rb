Rails.application.routes.draw do
  get 'top/index'
  get 'tasks/index'
  get 'tasks/new'
  resources :tasks


