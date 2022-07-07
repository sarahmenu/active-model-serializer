class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :mobile
      t.string :designation
      t.float :salary
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
