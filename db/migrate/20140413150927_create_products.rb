class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name

      t.timestamps
    end
    5.times.each do |i|
      Product.create :name => "Product#{i}"
    end
  end
end
