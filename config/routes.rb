Rails.application.routes.draw do
  # Routes for the Rental_assistance resource:
  get('/programs', {:controller => 'programs', :action => 'index'})

  # CREATE
  get('/rental_assistances/new', { :controller => 'rental_assistances', :action => 'new' })
  get('/create_rental_assistance', { :controller => 'rental_assistances', :action => 'create' })

  # READ
  get('/rental_assistances', { :controller => 'rental_assistances', :action => 'index' })
  get('/rental_assistances/:id', { :controller => 'rental_assistances', :action => 'show' })

  # UPDATE
  get('/rental_assistances/:id/edit', { :controller => 'rental_assistances', :action => 'edit' })
  get('/update_rental_assistance/:id', { :controller => 'rental_assistances', :action => 'update' })

  # DELETE
  get('/delete_rental_assistance/:id', { :controller => 'rental_assistances', :action => 'destroy' })
  #------------------------------

  # Routes for the Child_care_voucher resource:
  # CREATE
  get('/child_care_vouchers/new', { :controller => 'child_care_vouchers', :action => 'new' })
  get('/create_child_care_voucher', { :controller => 'child_care_vouchers', :action => 'create' })

  # READ
  get('/child_care_vouchers', { :controller => 'child_care_vouchers', :action => 'index' })
  get('/child_care_vouchers/:id', { :controller => 'child_care_vouchers', :action => 'show' })

  # UPDATE
  get('/child_care_vouchers/:id/edit', { :controller => 'child_care_vouchers', :action => 'edit' })
  get('/update_child_care_voucher/:id', { :controller => 'child_care_vouchers', :action => 'update' })

  # DELETE
  get('/delete_child_care_voucher/:id', { :controller => 'child_care_vouchers', :action => 'destroy' })
  #------------------------------

  # Routes for the Rta_free_ride resource:
  # CREATE
  get('/rta_free_rides/new', { :controller => 'rta_free_rides', :action => 'new' })
  get('/create_rta_free_ride', { :controller => 'rta_free_rides', :action => 'create' })

  # READ
  get('/rta_free_rides', { :controller => 'rta_free_rides', :action => 'index' })
  get('/rta_free_rides/:id', { :controller => 'rta_free_rides', :action => 'show' })

  # UPDATE
  get('/rta_free_rides/:id/edit', { :controller => 'rta_free_rides', :action => 'edit' })
  get('/update_rta_free_ride/:id', { :controller => 'rta_free_rides', :action => 'update' })

  # DELETE
  get('/delete_rta_free_ride/:id', { :controller => 'rta_free_rides', :action => 'destroy' })
  #------------------------------

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
  get("/", { :controller => "pages", :action => "homepage" })

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
