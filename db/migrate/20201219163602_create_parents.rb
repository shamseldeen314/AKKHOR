class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|
      t.string :code
      t.string :name
      t.string :address
      t.string :gender
      t.string :religion
      t.string :phone
      t.string :email
      t.date :date_birth
      t.string :national_id
      t.string :job
      t.text :cv
      t.timestamps
    end
  end
end
