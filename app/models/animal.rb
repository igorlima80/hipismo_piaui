class Animal < ApplicationRecord
    enum sex: {
        masculino: 0,
        feminino: 1        
    } 

    enum apt: {
        apto: 0,
        inapto: 1        
    } 
end
