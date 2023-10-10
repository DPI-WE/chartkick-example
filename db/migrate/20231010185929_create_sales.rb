class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.decimal :amount
      t.date :sale_date
      t.string :product_category

      t.timestamps
    end
  end
end
