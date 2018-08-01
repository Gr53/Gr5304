class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :name
      t.string :tipo

      t.timestamps
    end
  end
end


