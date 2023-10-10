desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  100.times do |i|
    Sale.create(
      amount: rand(1000),
      sale_date: Time.now - rand(365 * 24 * 60 * 60),
      product_category: Sale.product_categories.keys.sample
    )
  end
end
