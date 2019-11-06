class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.text :description
      t.text :model
      t.string :serial_number
      t.string :lpo_number
      t.datetime :date_supplied
      t.text :supplier
      t.text :status
      t.string :kcca_number
      t.string :equipment_name
      t.string :equipment_type

      t.timestamps
    end
  end
end
