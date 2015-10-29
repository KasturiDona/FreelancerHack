class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.boolean :complete
      t.text :description
      t.string :job_type

      t.timestamps null: false
    end
  end
end
