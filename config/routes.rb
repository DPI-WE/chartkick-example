Rails.application.routes.draw do
  resources :sales, only: [:index] do
    collection do
      get 'sales_by_month'
      get 'sales_by_category'
      get 'daily_sales_this_month'
      get 'export'
    end
  end

  root "sales#index"
end
