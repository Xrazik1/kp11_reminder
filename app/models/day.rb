class Day < ApplicationRecord
  has_many :notices, dependent: :destroy
  belongs_to :week

  validates :date, presence: true
  validates :name, presence: true
end
