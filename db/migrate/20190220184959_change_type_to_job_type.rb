class ChangeTypeToJobType < ActiveRecord::Migration[5.1]
  def self.up
    remove_column :jobs, :type
  end
  
  def self.down

  end
end
