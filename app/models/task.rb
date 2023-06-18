class Task < ApplicationRecord
  has_many :completes, dependent: :destroy
end
