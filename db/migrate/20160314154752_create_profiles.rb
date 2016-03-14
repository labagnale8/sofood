class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.boolean :gender
      t.references :user, index: true, foreign_key: true
      t.string :photo

      t.timestamps null: false
    end
  end
end
