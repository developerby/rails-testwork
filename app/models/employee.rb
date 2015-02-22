class Employee < ActiveRecord::Base
  belongs_to :company, inverse_of: :employees

  validates :name, presence: true
  validates :company, presence: true
  validates :hired_at, presence: true, on: :strict
end
