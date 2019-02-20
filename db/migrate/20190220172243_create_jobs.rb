class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company_name
      t.integer :company_id
      t.string :url
      t.string :location
      t.string :type
      t.datetime :posted
      t.string :category
      t.integer :level

      t.timestamps null: false
    end
  end
end
