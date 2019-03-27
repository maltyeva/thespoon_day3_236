class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, presence: true
  validates :stars, inclusion: { in: [1,2,3,4,5]}
end
