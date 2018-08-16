class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name1
      t.string :name1
      t.string :last_name1
      t.string :last_name2
      t.references :person_type, foreign_key: true

      t.timestamps
    end
  end
end
