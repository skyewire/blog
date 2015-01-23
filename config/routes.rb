Rails.application.routes.draw do
  get 'welcome/index'
  get '/notes' => 'notes#index'

  resources :articles do
    resources :comments
  end
  
  root 'welcome#index'
end
