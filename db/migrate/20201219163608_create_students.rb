class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :code
      t.string :name
      t.string :address
      t.string :gender
      t.string :religion
      t.string :phone
      t.string :email
      t.date :date_birth
      t.references :parent, null: false, foreign_key: true
      t.references :stage, null: false, foreign_key: true
      t.references :bus, null: false, foreign_key: true

      t.text :cv

      t.timestamps
    end
  end
end
