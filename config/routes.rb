Rails.application.routes.draw do
  # get 'sessions/new'
  #  get 'sessions/create'
  # get 'sessions/destroy'
  resources :users do
    member do
      get :salary_form
      get :show_salary
      patch :update_salary
    end
  end
  #get 'home/index'
   root "home#index"
   get '/new' => "home#new"
   get '/salary_details' => "home#salary_details"
   get '/salary_slip' => "users#salary_slip"



  resources :sessions, only: [:new, :create, :destroy]
  get '/signup' => "users#new"
  get '/login' => "sessions#new"
  get '/logout' => "sessions#destroy"
  #get '/salary_form' => "users#salary_form"
  # post '/show_salary' => "users#show_salary"
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
end
