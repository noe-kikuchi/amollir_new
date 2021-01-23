class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :family_name,        null: false
      t.string :first_name,         null: false
      t.string :family_name_kana,   null: false
      t.string :first_name_kana,    null: false
      t.date :birth_date_id,        null: false
      t.string :phone_number,       null: false
      t.timestamps
    end
  end
end
