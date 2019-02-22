class Job < ApplicationRecord
  include Sortable::InstanceMethods
  belongs_to :company
  belongs_to :category
  belongs_to :location
  belongs_to :level

  def self.by_category(category_id)
    where(category: category_id)
  end

  def self.by_location(location_id)
    where(location: location_id)
  end

  def self.by_company(company_id)
    where(company: company_id)
  end

  def self.by_level(level_id)
    where(level: level_id)
  end

  def self.by_location_and_category(category_id, location_name)
    self.by_category(category_id).by_location(location_name)
  end

end
