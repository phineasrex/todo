class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :task
      t.integer :list_id
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
