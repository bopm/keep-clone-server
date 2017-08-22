class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.text :text
      t.boolean :pinned, default: false

      t.timestamps
    end
  end
end
