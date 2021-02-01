class CreateKarutes < ActiveRecord::Migration[6.0]
  def change
    create_table :karutes do |t|
      t.string :pain      
      t.string :illness   
      t.string :history             
      t.string :medicine      
      t.string :habit
      t.text :memo
      t.string :date
      t.references :patient,         foreign_key: true
      t.timestamps
    end
  end
end
