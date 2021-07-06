Rails.application.routes.draw do
  resources :procedures
  root to: "procedures#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
