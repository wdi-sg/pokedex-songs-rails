class Job < ActiveRecord::Migration[5.2]
  def change
    add_column :job_img :string
  end
end
