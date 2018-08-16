class CreatePhotoPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_people do |t|
      t.string :photo_person

      t.timestamps
    end
  end
end
