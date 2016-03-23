require "sinatra"
require 'sinatra/activerecord'
require "sinatra/contrib/all" if development?
require_relative "controllers/transaction_controller"
require_relative "controllers/merchant_controller"
require_relative "controllers/category_controller"
require_relative "controllers/income_controller"
require_relative "controllers/account_controller"

get "/" do
  erb :"home"
end
