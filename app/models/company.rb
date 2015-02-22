class Company < ActiveRecord::Base
  validates :name, presence: true
  validates :founded_at, presence: true, on: :strict

  has_many :employees, inverse_of: :company
end
