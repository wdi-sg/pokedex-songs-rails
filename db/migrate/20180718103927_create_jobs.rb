class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.integer :job_level
      t.string :job_img
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
