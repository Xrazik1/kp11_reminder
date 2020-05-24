class Notice < ApplicationRecord
  belongs_to :day

  validates :content, presence: true
end

