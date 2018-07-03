class CreatePointOfContacts < ActiveRecord::Migration
  def change
    create_table :point_of_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.string :phone
      t.references :peg_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
