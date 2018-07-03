class CreatePegContactInfos < ActiveRecord::Migration
  def change
    create_table :peg_contact_infos do |t|
      t.text :first_name
      t.text :last_name
      t.text :title
      t.text :email
      t.text :phone

      t.timestamps null: false
    end
  end
end
