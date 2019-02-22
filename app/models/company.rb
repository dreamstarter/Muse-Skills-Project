class Company < ApplicationRecord
  include Sortable::InstanceMethods
  has_many :jobs
end