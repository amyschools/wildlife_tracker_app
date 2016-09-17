class AddColumnToSighting < ActiveRecord::Migration
  def change
    add_reference :sightings, :ranger, index: true, foreign_key: true
  end
end
