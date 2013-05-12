Integratechcaroneiro::Application.routes.draw do
  devise_for :users

  root :to => "home#index"

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
    get "sign_out", :to => "devise/sessions#destroy"
  end
end
