class ChangeCategoryToInteger < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :jobs, :category, :category_id
    change_column :jobs, :category_id, :integer, using: 'category_id::integer'
  end

  def self.down

  end
end
