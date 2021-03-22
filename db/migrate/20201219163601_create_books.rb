class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :tybe
      t.string :language
      t.string :section

      t.timestamps
    end
  end
end
