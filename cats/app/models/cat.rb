
class Cat < ApplicationRecord
    validates :birth_date, :color, :name, :description, presence: true
    validates :sex, presence: true, inclusion: { in: ['M', 'F'] }

    

end