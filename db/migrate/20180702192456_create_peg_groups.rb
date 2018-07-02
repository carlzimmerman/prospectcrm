class CreatePegGroups < ActiveRecord::Migration
  def change
    create_table :peg_groups do |t|
      t.text :firm_name
      t.text :website

      t.timestamps null: false
    end
  end
end
