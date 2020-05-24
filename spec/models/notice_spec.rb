require 'rails_helper'

RSpec.describe Notice, type: :model do
  it { should validate_presence_of :content }
  it { should belong_to :day }
end
