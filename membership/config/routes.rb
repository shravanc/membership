Rails.application.routes.draw do
  resources :tenants, only: [:create, :destroy]

  resources :subscription do
    resources :plans
  end
end
