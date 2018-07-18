class AddJobImgToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :job_img, :string
  end
end
