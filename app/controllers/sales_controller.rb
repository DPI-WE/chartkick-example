class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end 

  def sales_by_month
    render json: Sale.group_by_month(:sale_date, format: "%B %Y").sum(:amount)
  end

  def sales_by_category
    render json: Sale.group(:product_category).sum(:amount)
  end

  def daily_sales_this_month
    render json: Sale.where(sale_date: Date.today.beginning_of_month..Date.today.end_of_month).group_by_day(:sale_date).sum(:amount)
  end

  def export
    sales = Sale.last(10)
    respond_to do |format|
      format.csv do
        send_data(Sale.to_csv(Sale.last(10)), { :filename => "my_sales.csv"})
      end
    end
  end
end
