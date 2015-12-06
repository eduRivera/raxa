class Producto < ActiveRecord::Base
  attr_accessible :cod_barras, :descripcion_corta, :descripcion_larga, :dto_promocion, :familia, :numero, :precio, :ud_caja
end
