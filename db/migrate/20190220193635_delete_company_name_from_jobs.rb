class DeleteCompanyNameFromJobs < ActiveRecord::Migration[5.1]
  def self.up
    remove_column :jobs, :company_name
  end

  def self.down
    add_column :jobs, :company_name, :string, null: false
  end
end
