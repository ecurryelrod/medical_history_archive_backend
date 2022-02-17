class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :doc_name
      t.string :practice_name
      t.string :url
      t.date :date
      t.bigint :phone
      t.string :medications
      t.text :med_notes
      t.text :comments

      t.timestamps
    end
  end
end
