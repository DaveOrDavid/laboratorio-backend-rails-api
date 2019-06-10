class AddApplianceToHouses < ActiveRecord::Migration[5.2]
  def change
    add_reference :houses, :appliance, foreign_key: true
  end
end
