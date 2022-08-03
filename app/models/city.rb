class City < ApplicationRecord
  validates :name, presence: true, uniqueness: true, format: { with: /[a-zA-Z ]*/, message: 'Please, enter a valid city' }
  validates :zip_code, presence: true, format: { with: /[a-zA-Z0-9- ]*/, message: 'Please, enter a valid zipcode' }
  has_many :users
end
