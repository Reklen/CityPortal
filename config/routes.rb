Rails.application.routes.draw do
  devise_for :users

  root 'offers#index'

  resources :companies, :offers, :job_vacancies

  # authenticated :user do
  #   root 'companies#index', as: :authenticated_user_root
  # end

  namespace :user do
    resources :companies do
      resources :offers
      resources :job_vacancies
    end
  end

end
