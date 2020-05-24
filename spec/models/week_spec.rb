require 'rails_helper'

RSpec.describe Week, type: :model do
  it { should have_many :days }
  it { should belong_to :group }
end
