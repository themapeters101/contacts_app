Rails.application.routes.draw do
  namespace :api do
    get "/contacts" => 'contacts#index'
    post "/contacts" => 'contacts#create'
    get "/contacts" => 'contacts#show'
    patch "/contacts" => 'contacts#update'
    delete "/contacts" => 'contacts#destroy'
  end
end
