Rails.application.routes.draw do
  
  resources :class_rooms
  resources :class_plans
  resources :school_days
  resources :animals
  resources :payment_types
  resources :services
  resources :service_types
  
  resources :purchase_items
  resources :purchases
  resources :materials
  resources :material_categories
  resources :bank_accounts
  resources :providers
  resources :banks
  
  
  resources :taxes
  resources :deductions
  resources :benefits
  resources :benefit_types
  resources :employments
  resources :registrations   
  resources :document_types
  
  resources :people do
    resources :employments 
    resources :registrations   
  end
  
 
  resources :cities
  resources :countries
  resources :menu_items
  resources :phone_types
  
  resources :occupations
  resources :settings
  resources :states
  resources :users
  
  devise_for :users, path: 'u'

  post 'utils/postal_code'
  post 'utils/cities'
  get 'utils/cities'

  root 'people#index'
  mount Crono::Web, at: '/crono'
end
