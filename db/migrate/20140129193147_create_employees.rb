class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.integer :age
      t.integer :deparment_id
#      t.timestamps
    end
  end
end
