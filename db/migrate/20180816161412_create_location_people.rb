class CreateLocationPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :location_people do |t|
      t.string :location_person

      t.timestamps
    end
  end
end
