Rails.application.routes.draw do
  # Routes for the Head_start resource:
  # CREATE
  get('/head_starts/new', { :controller => 'head_starts', :action => 'new' })
  get('/create_head_start', { :controller => 'head_starts', :action => 'create' })

  # READ
  get('/head_starts', { :controller => 'head_starts', :action => 'index' })
  get('/head_starts/:id', { :controller => 'head_starts', :action => 'show' })

  # UPDATE
  get('/head_starts/:id/edit', { :controller => 'head_starts', :action => 'edit' })
  get('/update_head_start/:id', { :controller => 'head_starts', :action => 'update' })

  # DELETE
  get('/delete_head_start/:id', { :controller => 'head_starts', :action => 'destroy' })
  #------------------------------

  # Routes for the Early_head_start resource:
  # CREATE
  get('/early_head_starts/new', { :controller => 'early_head_starts', :action => 'new' })
  get('/create_early_head_start', { :controller => 'early_head_starts', :action => 'create' })

  # READ
  get('/early_head_starts', { :controller => 'early_head_starts', :action => 'index' })
  get('/early_head_starts/:id', { :controller => 'early_head_starts', :action => 'show' })

  # UPDATE
  get('/early_head_starts/:id/edit', { :controller => 'early_head_starts', :action => 'edit' })
  get('/update_early_head_start/:id', { :controller => 'early_head_starts', :action => 'update' })

  # DELETE
  get('/delete_early_head_start/:id', { :controller => 'early_head_starts', :action => 'destroy' })
  #------------------------------

  # Routes for the Housing_assistance resource:
  # CREATE
  get('/housing_assistances/new', { :controller => 'housing_assistances', :action => 'new' })
  get('/create_housing_assistance', { :controller => 'housing_assistances', :action => 'create' })

  # READ
  get('/housing_assistances', { :controller => 'housing_assistances', :action => 'index' })
  get('/housing_assistances/:id', { :controller => 'housing_assistances', :action => 'show' })

  # UPDATE
  get('/housing_assistances/:id/edit', { :controller => 'housing_assistances', :action => 'edit' })
  get('/update_housing_assistance/:id', { :controller => 'housing_assistances', :action => 'update' })

  # DELETE
  get('/delete_housing_assistance/:id', { :controller => 'housing_assistances', :action => 'destroy' })
  #------------------------------

  # Routes for the Wic resource:
  # CREATE
  get('/wics/new', { :controller => 'wics', :action => 'new' })
  get('/create_wic', { :controller => 'wics', :action => 'create' })

  # READ
  get('/wics', { :controller => 'wics', :action => 'index' })
  get('/wics/:id', { :controller => 'wics', :action => 'show' })

  # UPDATE
  get('/wics/:id/edit', { :controller => 'wics', :action => 'edit' })
  get('/update_wic/:id', { :controller => 'wics', :action => 'update' })

  # DELETE
  get('/delete_wic/:id', { :controller => 'wics', :action => 'destroy' })
  #------------------------------

  # Routes for the Vision resource:
  # CREATE
  get('/visions/new', { :controller => 'visions', :action => 'new' })
  get('/create_vision', { :controller => 'visions', :action => 'create' })

  # READ
  get('/visions', { :controller => 'visions', :action => 'index' })
  get('/visions/:id', { :controller => 'visions', :action => 'show' })

  # UPDATE
  get('/visions/:id/edit', { :controller => 'visions', :action => 'edit' })
  get('/update_vision/:id', { :controller => 'visions', :action => 'update' })

  # DELETE
  get('/delete_vision/:id', { :controller => 'visions', :action => 'destroy' })
  #------------------------------

  # Routes for the Dental resource:
  # CREATE
  get('/dentals/new', { :controller => 'dentals', :action => 'new' })
  get('/create_dental', { :controller => 'dentals', :action => 'create' })

  # READ
  get('/dentals', { :controller => 'dentals', :action => 'index' })
  get('/dentals/:id', { :controller => 'dentals', :action => 'show' })

  # UPDATE
  get('/dentals/:id/edit', { :controller => 'dentals', :action => 'edit' })
  get('/update_dental/:id', { :controller => 'dentals', :action => 'update' })

  # DELETE
  get('/delete_dental/:id', { :controller => 'dentals', :action => 'destroy' })
  #------------------------------

  # Routes for the Family_nutrition resource:
  # CREATE
  get('/family_nutritions/new', { :controller => 'family_nutritions', :action => 'new' })
  get('/create_family_nutrition', { :controller => 'family_nutritions', :action => 'create' })

  # READ
  get('/family_nutritions', { :controller => 'family_nutritions', :action => 'index' })
  get('/family_nutritions/:id', { :controller => 'family_nutritions', :action => 'show' })

  # UPDATE
  get('/family_nutritions/:id/edit', { :controller => 'family_nutritions', :action => 'edit' })
  get('/update_family_nutrition/:id', { :controller => 'family_nutritions', :action => 'update' })

  # DELETE
  get('/delete_family_nutrition/:id', { :controller => 'family_nutritions', :action => 'destroy' })
  #------------------------------

  # Routes for the Auto_repair_assistance resource:
  # CREATE
  get('/auto_repair_assistances/new', { :controller => 'auto_repair_assistances', :action => 'new' })
  get('/create_auto_repair_assistance', { :controller => 'auto_repair_assistances', :action => 'create' })

  # READ
  get('/auto_repair_assistances', { :controller => 'auto_repair_assistances', :action => 'index' })
  get('/auto_repair_assistances/:id', { :controller => 'auto_repair_assistances', :action => 'show' })

  # UPDATE
  get('/auto_repair_assistances/:id/edit', { :controller => 'auto_repair_assistances', :action => 'edit' })
  get('/update_auto_repair_assistance/:id', { :controller => 'auto_repair_assistances', :action => 'update' })

  # DELETE
  get('/delete_auto_repair_assistance/:id', { :controller => 'auto_repair_assistances', :action => 'destroy' })
  #------------------------------

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
