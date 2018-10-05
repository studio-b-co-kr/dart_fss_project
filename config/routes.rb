Rails.application.routes.draw do
  resources :company_stocks do
    resources :capital_increases, only: [ :new, :create, :edit ]
  end
end
