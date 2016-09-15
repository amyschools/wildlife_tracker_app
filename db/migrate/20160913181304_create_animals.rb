class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |table|
      table.string :common_name
      table.string :latin_name
      table.string :kingdom

      table.timestamps null: false
    end
  end
end
