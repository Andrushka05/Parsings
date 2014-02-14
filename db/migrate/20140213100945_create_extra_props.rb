class CreateExtraProps < ActiveRecord::Migration
  def change
    create_table :extra_props do |t|
      t.string :name
      t.string :value
      t.references :product, index: true

      t.timestamps
    end
  end
end
