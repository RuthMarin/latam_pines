class CreatePines < ActiveRecord::Migration[5.2]
  def change
    create_table :pines do |t|
      t.string :nombre
      t.string :descripcin
      t.string :foto
      t.integer :likes

      t.timestamps
    end
  end
end
