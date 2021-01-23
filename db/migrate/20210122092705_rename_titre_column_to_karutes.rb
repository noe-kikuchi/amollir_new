class RenameTitreColumnToKarutes < ActiveRecord::Migration[6.0]
  def change
    rename_column :karutes, :user_id, :patient_id
  end
end
