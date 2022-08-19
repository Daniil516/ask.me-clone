Rails.application.routes.draw do
  root to: "questions#index"
  resources :questions do
    member do
      patch :hide
      put :hide
    end
  end
  resources :users, except: %i[index], param: :slug
  resource :session, only: %i[new create destroy]
end
