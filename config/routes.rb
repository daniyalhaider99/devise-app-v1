Rails.application.routes.draw do
  devise_scope :user do
    # write all your routes inside this block
    root to: 'users/sessions#new'
  end

  resources :home_pages

  devise_for :users, controllers: {

    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
