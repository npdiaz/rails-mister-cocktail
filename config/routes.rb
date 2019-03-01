Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :delete]
  end
  delete 'doses/:id', to: 'doses#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
