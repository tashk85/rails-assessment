class CreatePrinters < ActiveRecord::Migration[5.2]
  def change
    create_table :printers do |t|
      t.references :user, foreign_key: true
      t.string :abn
      t.string :printer_model

      t.timestamps
    end
  end
end
