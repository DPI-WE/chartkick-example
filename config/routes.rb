Rails.application.routes.draw do
  resources :sales, only: [:index] do
    collection do
      get "sales_by_category"
      get "sales_by_day_this_month"
    end
  end
  
  # get "sales/sales_by_category", to: "sales#sales_by_category", as: :sales_by_category
  # get "sales/sales_by_day_this_month", to: "sales#sales_by_day_this_month", as: :sales_by_day_this_month

  root "sales#index"
  
end
