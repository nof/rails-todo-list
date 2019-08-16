class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false, default: ''
      t.boolean :finished, null: false, default: false

      t.timestamps
    end
  end
end
