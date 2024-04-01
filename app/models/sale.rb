# == Schema Information
#
# Table name: sales
#
#  id               :integer          not null, primary key
#  amount           :decimal(, )
#  product_category :string
#  sale_date        :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Sale < ApplicationRecord
  enum product_category: {
    electronics: 'Electronics',
    apparel: 'Apparel',
    home_and_living: 'Home & Living',
    books_and_media: 'Books & Media',
    beauty_and_health: 'Beauty & Health',
    sports_and_fitness: 'Sports & Fitness',
    toys_and_kids: 'Toys & Kids',
    groceries_and_consumables: 'Groceries & Consumables',
    software_and_digital: 'Software & Digital Services',
    automotive_and_tools: 'Automotive & Tools'
  }

  def self.to_csv(sales = self.all)
    headers = ["id", "amount", "product_category", "sale_date"]
    csv = CSV.generate(headers: true) do |csv|
      csv << headers
      sales.each do |sale|
        row = []
        row.push(sale.id)
        row.push(sale.amount)
        row.push(sale.product_category)
        row.push(sale.sale_date)
        csv << row
      end
    end
    return csv
  end
end
