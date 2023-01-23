json.array! @units do |unit|
  json.name unit.name
  json.tv unit.tv
  json.extract! unit, :name, :tv, :unit_attributes
  # json.array! unit.unit_attributes do |unit_attribute|
  unit.unit_attributes do |unit_attribute|
    # json.extract! unit_attribute, :id, :unit, :attribute, :value
    json.partial! "unit_attributes/unit_attribute", unit_attribute: unit_attribute
  end
  json.partial! "units/unit", unit: unit
  # partial: "units/unit", as: :unit
end