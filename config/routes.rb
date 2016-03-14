Rails.application.routes.draw do

  get 'menu' => 'menu#index'
  get 'contact' => 'welcome#contact'
  get 'search' => 'menu#search'
  resources :food_items
  # get 'welcome/index'
  root 'welcome#index'
end
