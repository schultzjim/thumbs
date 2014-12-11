Rails.application.routes.draw do
  root 'ideas#index'
  resources :ideas, only: [:index, :show]
  resources :ideas do
    member do
      post :thumbsup
    end
  end
end
