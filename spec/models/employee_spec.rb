require 'rails_helper'

RSpec.describe Employee, :type => :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :company }
  it { should belong_to(:company).inverse_of(:employees) }
end
