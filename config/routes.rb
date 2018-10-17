Rails.application.routes.draw do
  resources :company_stocks do
    resources :capital_increases, only: [ :new, :create, :edit, :show ]
  end
  resources :request, only: [ :show ], params: :code
end
