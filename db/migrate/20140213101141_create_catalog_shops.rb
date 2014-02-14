class CreateCatalogShops < ActiveRecord::Migration
  def change
    create_table :catalog_shops do |t|
      t.string :name
      t.references :shop, index: true

      t.timestamps
    end
  end
end
