class Complete < ApplicationRecord
  belongs_to :task
  validates :date, uniqueness: true, presence: true
end
