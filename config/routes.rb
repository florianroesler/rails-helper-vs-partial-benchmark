Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'root#index'

  resource :benchmarks, only: [] do
    collection do
      get 'helper'
      get 'partial'
    end
  end
end
