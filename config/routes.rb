Rails.application.routes.draw do
  # Routes for the Snap_eligibility resource:
  # CREATE
  get('/mrelief', { :controller => 'snap_eligibilities', :action => 'new' })
  get('/create_snap_eligibility', { :controller => 'snap_eligibilities', :action => 'create' })

  # READ
  get('/snap_eligibilities', { :controller => 'snap_eligibilities', :action => 'index' })
  get('/snap_eligibilities/:id', { :controller => 'snap_eligibilities', :action => 'show' })

  # UPDATE
  get('/snap_eligibilities/:id/edit', { :controller => 'snap_eligibilities', :action => 'edit' })
  get('/update_snap_eligibility/:id', { :controller => 'snap_eligibilities', :action => 'update' })

  # DELETE
  get('/delete_snap_eligibility/:id', { :controller => 'snap_eligibilities', :action => 'destroy' })
  #------------------------------

  get('/about_us', { :controller => 'snap_eligibilities', :action => 'about_us' })
  get('/contact_us', { :controller => 'snap_eligibilities', :action => 'contact_us' })
  get('/what_is_snap', { :controller => 'snap_eligibilities', :action => 'what_is_snap' })
  get('/how_mrelief_works', { :controller => 'snap_eligibilities', :action => 'how_mrelief_works' })

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
