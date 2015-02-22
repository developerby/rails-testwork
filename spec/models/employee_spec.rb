require 'rails_helper'

RSpec.describe Employee, :type => :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :company }
  it { should validate_presence_of(:hired_at).on(:strict) }
  it { should belong_to(:company).inverse_of(:employees) }

  describe "nested company validation" do
    let(:company) { Company.create! name: "Test Company" }
    let(:employee) { Employee.create! name: "John Smith", company: company, hired_at: 2.days.ago }
    subject { employee }

    context "with default context" do
      it { is_expected.to be_valid }
    end

    context "with strict context" do
      specify do
        expect(subject).to_not be_valid(:strict)
        expect(subject.errors).to include(:'company.founded_at')
      end
    end
  end
end
