Rails.application.routes.draw do
  get 'top/index'

  resources :userinfos
  get 'login/index'
  post 'login/auth'

  resources :raischecktags
  resources :raischecktags
  resources :raischecktags
  # resources :pokedexes    
  #resources :pokerais
  resources :skillnames
  #resources :pokedexes
  #resources :users
  resources :cha3s
  resources :cha2s
  resources :cha1s
  # resources :pokedexes
  #resources :pokerais
  resources :skillnames
  #resources :pokedexes

  resources :wepons
  resources :pers
  resources :types
  resources :eggs
  resources :coms
  resources :buildtags
  resources :skills
  resources :parties
  resources :raistags
  resources :chas

  resources :pokebuilds do
    get :autocomplete_pokebuild_title, :on => :collection
    post 'search', on: :collection
  end

  resources :buildchecktags
  resources :buildskills

  resources :pokedexes do
    get :autocomplete_pokedex_name, :on => :collection
    get 'show_image', on: :member
    post 'search', on: :collection
  end

 resources :pokerais do
    get :autocomplete_pokerai_title, :on => :collection
    get 'show_image', on: :member
    post 'search', on: :collection
  end

  resources :users do
    get 'show_image', on: :member
  end



  root to: "top#index"



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
