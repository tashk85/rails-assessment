class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.string :description
      t.float :budget
      t.date :due_date
      t.boolean :has_job

      t.timestamps
    end
  end
end
