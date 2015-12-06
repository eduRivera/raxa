class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :numero
      t.integer :cod_barras
      t.string :descripcion_corta
      t.text :descripcion_larga
      t.string :familia
      t.decimal :precio
      t.integer :dto_promocion
      t.integer :ud_caja

      t.timestamps
    end
  end
end
