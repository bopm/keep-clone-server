Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'xsrf' => 'xsrf#show'
      resources :cards
    end
  end
end
