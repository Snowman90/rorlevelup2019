Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :clans, only: %i[index create] do
        resources :samurais
      end
    end
  end
end
