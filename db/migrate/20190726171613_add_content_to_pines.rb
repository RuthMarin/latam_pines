class AddContentToPines < ActiveRecord::Migration[5.2]
  def change
    add_column :pines, :user_id, :integer
  end
end
