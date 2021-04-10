class Responsible < ApplicationRecord
    enum sex: {
        masculino: 0,
        feminino: 1        
    }  

    belongs_to :registration

    has_many :addresses, dependent: :destroy, as: :addressable
    has_many :phones, dependent: :destroy, as: :phonable
end
