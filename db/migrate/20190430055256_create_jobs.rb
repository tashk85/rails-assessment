class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :listing, foreign_key: true
      t.references :printer, foreign_key: true
      t.references :quote, foreign_key: true
      t.boolean :status
      t.integer :stripe_transaction_id
      t.date :created_at
      t.date :completed_at

      t.timestamps
    end
  end
end
