Rails.application.routes.draw do
  devise_for :users

  root 'offers#index'

  resources :companies, :offers, :job_vacancies

  # authenticated :admin do
  #   root 'companies#index', as: :authenticated_admin_root
  # end

  # namespace :admin do
  # end

end
