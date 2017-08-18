Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end

  root to: 'cocktails#index'
end





# verb 'route_name', to: 'controller#method', as: 'new_dose'
