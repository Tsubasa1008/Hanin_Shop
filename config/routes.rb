Rails.application.routes.draw do
  scope '(:locale)' do
    devise_for :users
    devise_for :managers, controllers: {
      sessions: "manager/sessions",
      passwords: "manager/passwords"
    }
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
    namespace :dashboard do
      namespace :admin do
        resources :users
        resources :managers, only: [:edit, :update] do
          collection do
            get :check_manager_email
          end
        end
        resources :products
        get  "/", to: "admin#index"
      end
    end
    resources :home
    root "home#index"
  end
end
