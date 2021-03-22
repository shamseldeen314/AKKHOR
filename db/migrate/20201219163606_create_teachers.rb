class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :address
      t.string :gender
      t.string :religion
      t.string :phone
      t.string :email
      t.date :date_birth
      t.string :national_id
      t.references :stage, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
