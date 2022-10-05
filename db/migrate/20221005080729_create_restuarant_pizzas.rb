class CreateRestuarantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restuarant_pizzas do |t|
      t.integer :pizza_id
      t.integer :restuarant_id
      t.integer :price

      t.timestamps
    end
  end
end
