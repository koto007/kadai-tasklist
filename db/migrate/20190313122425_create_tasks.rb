class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :status
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
