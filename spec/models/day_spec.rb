require 'rails_helper'

RSpec.describe Day, type: :model do
  it { should validate_presence_of :date }
  it { should validate_presence_of :name }
  it { should have_many :notices }
  it { should belong_to :week }
end
