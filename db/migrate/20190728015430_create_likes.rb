class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :pin_id
      t.string :estado

      t.timestamps
    end
  end
end
