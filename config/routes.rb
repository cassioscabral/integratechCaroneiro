Integratechcaroneiro::Application.routes.draw do
  resources :itinerarios


  resources :caronas
  match 'caronas/:id/adicionar_caroneiro' => 'caronas#adicionar_caroneiro', as: :adicionar_caroneiro

  match "caronas" => "caronas#index"
  resources :perfis

  devise_for :users

  root :to => "home#index"

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
    get "sign_out", :to => "devise/sessions#destroy"
  end
end
