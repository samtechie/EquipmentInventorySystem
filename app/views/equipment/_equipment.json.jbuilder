json.extract! equipment, :id, :description, :model, :serial_number, :lpo_number, :date_supplied, :supplier, :status, :kcca_number, :equipment_name, :equipment_type, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)
