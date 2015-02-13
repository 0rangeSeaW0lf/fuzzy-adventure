Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  namespace :api, defaults: { format: :json }, path: '/'  do
    scope module: :v1 do
      namespace :admin do
        resources :places, only: :index
        resources :dimensions, only: :update
      end
      resources :places, only: [:show, :create, :destroy]
    end
  end
end
