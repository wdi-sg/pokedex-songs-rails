class CreateMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :masters do |t|
      t.string :name
      t.text :description
      t.references :pokemons, foreign_key: true

      t.timestamps
    end
  end
end
