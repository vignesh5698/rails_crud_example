Rails.application.routes.draw do
  root 'posts#index'

  resources :posts do
    collection do
      get :test
    end
  end

  resources :users do
    collection do
      get :show_all
    end
  end
  
  get 'about' => 'pages#about'
  get 'help' => 'help#index'
  get 'help/queries' => 'help#queries'
  get 'help/usage' => 'help#usage'
  get 'help/others' => 'help#others'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
