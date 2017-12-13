class CreateHumen < ActiveRecord::Migration[5.1]
  def change
    create_table :humen do |t|
      t.string :first_name
      t.string :last_name
      t.string :vk_id

      t.timestamps
    end
  end
end
