class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :collaborator
      t.text :skillset
      t.float :rating
      t.boolean :hiring_status
      t.float :account

      t.timestamps null: false
    end
  end
end
