Rails.application.routes.draw do
  get 'welcome/index'
  resources :remembers
  root 'welcome#index'
end
