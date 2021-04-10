class Registration < ApplicationRecord
  
  enum have_allergy: {
    dont_have_allergy: 0,
    have_allergy: 1        
  }
  
  enum use_medicine: {
    dont_use_medicine: 0,
    use_medicine: 1        
  }  

  enum have_surgery: {
    dont_have_surgery: 0,
    have_surgery: 1        
  }  

  enum health_problem: {
    dont_health_problem: 0,
    health_problem: 1        
  }  



  belongs_to :payment_type
  belongs_to :person
  monetize :value_cents

  has_one :responsible, dependent: :destroy
  accepts_nested_attributes_for :responsible, allow_destroy: true


end
