class CreatePokemonMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_masters do |t|
      t.text :name
      t.text :pokemon_id

      t.timestamps
    end
  end
end
