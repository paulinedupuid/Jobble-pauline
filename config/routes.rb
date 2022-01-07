Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    collection do
      get :professional_update
      post :job_update
      post :skill_update
      # get :new_user_skills
      # post :create_user_skills
      # get :new_user_jobs
      # post :create_user_jobs
    end
    member do
      get :show
      patch :description_maj
      patch :update_users
      get :dashboard
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers, only: [:index, :show] do
    resources :matches, only: [:create, :update]
  end
  resources :messages, only: %i[show]
end
####################################
# a tester
  # resources :users do
  #   member do
  #     get :edit_user_jobs
  #     patch :update_user_jobs
  #   end
  # end
