class ChangeLocationToInteger < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :jobs, :location, :location_id
    change_column :jobs, :location_id, :integer, using: 'location_id::integer'
  end

  def self.down

  end
end
