class Company < ActiveRecord::Base
  validates :name, presence: true

  has_many :employees, inverse_of: :company
end
