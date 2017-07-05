class Room < ApplicationRecord
<<<<<<< HEAD


 validates :name, presence: :true
 validates :email, presence: :true, uniqueness: :true
=======
  has_many :messages
  validates :name, uniqueness: true, presence: true
>>>>>>> ed53c905c805f25e1b5a8c2bcd657fee09f3ac00
end
