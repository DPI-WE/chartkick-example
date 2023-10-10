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
end
