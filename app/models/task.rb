class Task < ApplicationRecord
  has_many :completes, dependent: :destroy
  belongs_to :user
end
