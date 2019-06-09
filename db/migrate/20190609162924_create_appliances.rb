class CreateAppliances < ActiveRecord::Migration[5.2]
  def change
    create_table :appliances do |t|
      t.string :location
      t.string :part_number
      t.string :image_url

      t.timestamps
    end
  end
end
