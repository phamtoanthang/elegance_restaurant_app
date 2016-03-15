Rails.application.routes.draw do
  get 'menu' => 'menu#index'
  get 'contact' => 'welcome#contact'
  get 'search' => 'menu#search'
  resources :food_items do
    resources :orders
  end
  root 'welcome#index'
  get 'thanks' => 'orders#thanks'
end
