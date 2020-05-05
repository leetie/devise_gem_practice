Rails.application.routes.draw do
  devise_for :users
  get 'profile' => 'users#profile'
  get 'settings' => 'users#edit'
  get 'welcome/index'
  root 'welcome#index'

  resources :users do
    member do
      get :confirm_email
    end
  end
  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }

end
