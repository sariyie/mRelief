Rails.application.routes.draw do

  # Routes for the Medicaid resource:
  # CREATE
  get('/medicaids/new', { :controller => 'medicaids', :action => 'new' })
  get('/create_medicaid', { :controller => 'medicaids', :action => 'create' })


  #------------------------------

  # Routes for the All_city_program resource:
  # CREATE
  get('/all_city_programs/new', { :controller => 'all_city_programs', :action => 'new' })
  get('/create_all_city_program', { :controller => 'all_city_programs', :action => 'create' })


  #------------------------------

  # Routes for the All_kid resource:
  # CREATE
  get('/all_kids/new', { :controller => 'all_kids', :action => 'new' })
  get('/create_all_kid', { :controller => 'all_kids', :action => 'create' })


  #------------------------------

# Routes for the text resource:
  post('/', { :controller => 'twilio', :action => 'text'})

  # Routes for the Head_start resource:
  # CREATE
  get('/head_starts/new', { :controller => 'head_starts', :action => 'new' })
  get('/create_head_start', { :controller => 'head_starts', :action => 'create' })


  #------------------------------

  # Routes for the Early_head_start resource:
  # CREATE
  get('/early_head_starts/new', { :controller => 'early_head_starts', :action => 'new' })
  get('/create_early_head_start', { :controller => 'early_head_starts', :action => 'create' })


  #------------------------------

  # Routes for the Housing_assistance resource:
  # CREATE
  get('/housing_assistances/new', { :controller => 'housing_assistances', :action => 'new' })
  get('/create_housing_assistance', { :controller => 'housing_assistances', :action => 'create' })


  #------------------------------

  # Routes for the Wic resource:
  # CREATE
  get('/wics/new', { :controller => 'wics', :action => 'new' })
  get('/create_wic', { :controller => 'wics', :action => 'create' })


  #------------------------------

  # Routes for the Vision resource:
  # CREATE
  get('/visions/new', { :controller => 'visions', :action => 'new' })
  get('/create_vision', { :controller => 'visions', :action => 'create' })

  #------------------------------

  # Routes for the Dental resource:
  # CREATE
  get('/dentals/new', { :controller => 'dentals', :action => 'new' })
  get('/create_dental', { :controller => 'dentals', :action => 'create' })


  #------------------------------

  # Routes for the Family_nutrition resource:
  # CREATE
  get('/family_nutritions/new', { :controller => 'family_nutritions', :action => 'new' })
  get('/create_family_nutrition', { :controller => 'family_nutritions', :action => 'create' })


  #------------------------------

  # Routes for the Auto_repair_assistance resource:
  # CREATE
  get('/auto_repair_assistances/new', { :controller => 'auto_repair_assistances', :action => 'new' })
  get('/create_auto_repair_assistance', { :controller => 'auto_repair_assistances', :action => 'create' })


  #------------------------------

  # Routes for the Rental_assistance resource:
  get('/programs', {:controller => 'programs', :action => 'index'})

  # CREATE
  get('/rental_assistances/new', { :controller => 'rental_assistances', :action => 'new' })
  get('/create_rental_assistance', { :controller => 'rental_assistances', :action => 'create' })


  #------------------------------

  # Routes for the Child_care_voucher resource:
  # CREATE
  get('/child_care_vouchers/new', { :controller => 'child_care_vouchers', :action => 'new' })
  get('/create_child_care_voucher', { :controller => 'child_care_vouchers', :action => 'create' })


  #------------------------------

  # Routes for the Rta_free_ride resource:
  # CREATE
  get('/rta_free_rides/new', { :controller => 'rta_free_rides', :action => 'new' })
  get('/create_rta_free_ride', { :controller => 'rta_free_rides', :action => 'create' })


  #------------------------------

  # Routes for the Snap_eligibility resource:
  # CREATE
  get('/mrelief', { :controller => 'snap_eligibilities', :action => 'new' })
  get('/create_snap_eligibility', { :controller => 'snap_eligibilities', :action => 'create' })


  #------------------------------

  get('/about_us', { :controller => 'pages', :action => 'about_us' })
  get('/contact_us', { :controller => 'pages', :action => 'contact_us' })
  get('/how_mrelief_works', { :controller => 'pages', :action => 'how_mrelief_works' })
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
