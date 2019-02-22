class ChangeLevelToInteger < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :jobs, :level, :level_id
    change_column :jobs, :level_id, :integer, using: 'level_id::integer'
  end

  def self.down

  end
end
