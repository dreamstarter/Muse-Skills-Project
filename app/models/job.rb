class Job < ApplicationRecord
  belongs_to :company
  belongs_to :category
  belongs_to :location
  belongs_to :level
end
