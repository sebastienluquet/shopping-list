class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :cardinality
      t.integer :list_id
      t.integer :product_id

      t.timestamps
    end
  end
end
