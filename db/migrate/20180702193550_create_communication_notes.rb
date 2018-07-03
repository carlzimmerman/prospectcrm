class CreateCommunicationNotes < ActiveRecord::Migration
  def change
    create_table :communication_notes do |t|
      t.text :type
      t.text :notes
      t.text :prospect_status

      t.timestamps null: false
    end
  end
end
