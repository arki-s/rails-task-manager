class Complete < ApplicationRecord
  belongs_to :task
  validates :date, presence: true
end
