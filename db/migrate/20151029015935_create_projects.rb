class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
