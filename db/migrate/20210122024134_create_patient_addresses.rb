class CreatePatientAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :patient_addresses do |t|
      t.string :postal_code,      nill: false
      t.integer :prefecture_id,    nill: false
      t.string :city,             nill: false
      t.string :address,          nill: false
      t.string :building_name
      t.references :patient,      foreign_key: true
      t.timestamps
    end
  end
end
