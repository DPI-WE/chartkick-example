Rails.application.routes.draw do
  resources :sales do
    collection do
      get "amount_by_category"
      get "this_month_daily"
    end
  end
  root "sales#index"
end
