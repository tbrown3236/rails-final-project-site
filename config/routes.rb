Rails.application.routes.draw do

  get 'page/send_mail', controller: :page, action: :send_mail, as: 'page_send_mail'
  get 'articles/send_article/:id', controller: :articles, action: :send_article, as: 'articles_send_article'
  resources :blogs do
    resources :blog_comments
  end

  get 'stores' => 'stores#index'
  get 'stores/:id' => 'stores#show', as: 'stores_show'

  devise_for :users
  resources :products do
    resources :comments
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :articles do
    member do
      get 'send_article', as: 'send'
    end
  end


  #resources :recipes
  get 'page/index'
  get 'page/about_us'

  get 'page/contact_us'
  post 'page/contact_us'

  #get 'page/products'
  get 'page/newsletter'
  get 'page/blog'
  get 'page/calendar(/:month)', :controller => :page, :action => :calendar, :as => "page/calendar"
  get 'page/articles'
  get 'page/login'



  get "say/hello"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'page#index'

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
