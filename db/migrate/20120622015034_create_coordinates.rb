class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.string :coordinates

      t.timestamps
    end
  end
end
