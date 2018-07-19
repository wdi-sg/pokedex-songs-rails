class AddNamesToMaster < ActiveRecord::Migration[5.2]
  def change
  	# add_column :table_name, :column_name, :data_type
	add_column :masters, :name, :string
  end
end
