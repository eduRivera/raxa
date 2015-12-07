class CreateFamilia < ActiveRecord::Migration
  def change
    create_table :familia do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
