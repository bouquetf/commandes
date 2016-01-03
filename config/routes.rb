Rails.application.routes.draw do
  root 'commands#index'

  resources :commands do
    resources :answers
  end

  get "/allcommands" => "commands#all"
  get "authorize" => "auth#gettoken"
  get "/login", to: "auth#login", as: 'login'

end
