require 'rails_helper'

RSpec.describe Company, :type => :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of(:founded_at).on(:strict) }
  it { should have_many(:employees).inverse_of(:company) }
end
