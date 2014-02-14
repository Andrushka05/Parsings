class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :url
      t.string :xpath
      t.string :host

      t.timestamps
    end
  end
end
