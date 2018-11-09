Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  post 'publish' => 'pub_sub#publish'
  post 'subscribe' => 'pub_sub#subscribe'

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
