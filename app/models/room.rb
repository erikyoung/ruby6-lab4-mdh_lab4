class Room < ApplicationRecord


has_many :rooms
 validates :name, presence: :true
 validates :email, presence: :true, uniqueness: :true

  has_many :messages
  validates :name, uniqueness: true, presence: true

end
