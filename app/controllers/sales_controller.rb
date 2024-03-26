class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def sales_by_category
    render json: Sale.group(:product_category).sum(:amount).transform_keys(&:titleize)
  end

  def sales_by_day_this_month
    render json: Sale.where(sale_date: Date.today.beginning_of_month..Date.today.end_of_month).group_by_day(:sale_date).count
  end
end
