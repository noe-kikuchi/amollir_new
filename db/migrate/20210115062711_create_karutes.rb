class CreateKarutes < ActiveRecord::Migration[6.0]
  def change
    create_table :karutes do |t|
      t.text :pain
      t.text :illness
      t.text :history
      t.text :medicine
      t.text :habit
      t.text :memo
      t.date :date
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
