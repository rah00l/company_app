class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :title
      t.string :description, limit: 1000
      t.integer :company_id 	
#      t.timestamps
    end
  end
end
