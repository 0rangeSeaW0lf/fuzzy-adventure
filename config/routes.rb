Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  scope module: :api, default: { format: :json } do
    namespace :v1, path: '/' do
      namespace :admin do
        resources :vehicles
      end
    end
  end
end
