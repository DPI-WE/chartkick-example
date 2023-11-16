class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def this_month_daily
    # filter only sale_date for current month
    # group by day
    # sum amount
    render json: Sale.where(sale_date: Date.today.beginning_of_month..Date.today.end_of_month).group_by_day(:sale_date).sum(:amount)
  end

  def amount_by_category
    render json: Sale.group(:product_category).sum(:amount)
  end
end
