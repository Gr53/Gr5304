class CreateReporPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :repor_people do |t|
      t.string :repor_person

      t.timestamps
    end
  end
end
