class AddsReferencesForContactToPeg < ActiveRecord::Migration
  def change
    add_column :communication_note do |t|

      t.references :peg_group, foreign_key: true

  end
end
