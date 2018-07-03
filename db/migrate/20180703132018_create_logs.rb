class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :type
      t.text :notes
      t.string :status
      t.references :peg_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
