Page::Application.routes.draw do
 
  resources :urls, only: [:index, :create, :show]

  root to: 'urls#index'
  
end
