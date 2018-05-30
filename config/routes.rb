Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Root View from Posts Controller
  root "posts#index"

  # About View
  get 'about' => "pages#about", as: "about"

  # Resources
  resources :posts do
    resources :comments
  end

end
