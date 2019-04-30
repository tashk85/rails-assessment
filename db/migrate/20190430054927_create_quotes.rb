class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.references :printer, foreign_key: true
      t.references :listing, foreign_key: true
      t.boolean :has_job
      t.float :total_price
      t.integer :job_size
      t.date :turnaround_time

      t.timestamps
    end
  end
end
