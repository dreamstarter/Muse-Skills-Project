class Job < ApplicationRecord
  # belongs_to :company_name, :class_name => 'Company', :foreign_key => 'id' 
  belongs_to :category
end
