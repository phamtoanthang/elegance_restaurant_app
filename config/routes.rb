Rails.application.routes.draw do
  get 'menu' => 'menu#index'

  resources :food_items
  get 'welcome/index'
  root 'welcome#index'
end
