class Group < ApplicationRecord
  has_one :week

  validates :name, presence: true
end
