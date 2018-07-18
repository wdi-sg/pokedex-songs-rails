class CreateMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :masters do |t|
      t.string :name
      t.string :pokemon_id

      t.timestamps
    end
  end
end
