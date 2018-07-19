class AddImageToMasters < ActiveRecord::Migration[5.2]
  def change
  	add_column :masters, :img, :text
  end
end
