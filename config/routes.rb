Rails.application.routes.draw do
  root 'commands#index'

  resources :commands do
    resources :answers
  end

  get "authorize" => "auth#gettoken"
  get "/login", to: "auth#login", as: 'login'

end
