require_relative "../models/merchant.rb"
require_relative "../models/category.rb"
require_relative "../models/transaction.rb"

get "/categories" do
  # INDEX
  @category = Category.new(params)
  @categories = Category.all
  @transactions = Transaction.all
  @merchants = Merchant.all
  erb :"categories/index"
end

get "/categories/new" do
  # NEW
  @transactions = Transaction.all
  @merchants = Merchant.all
  erb :"categories/new"
end

get '/categories/:id' do
  # SHOW
  @category = Category.find(params[:id])
  @transactions = Transaction.all
  @merchants = Merchant.all
  @categories = Category.all
  erb :"categories/show"
end

get '/categories/:id/edit' do
  # EDIT
  @category = Category.find(params[:id])
  @transactions = Transaction.all
  @merchants = Merchant.all
  erb :"categories/edit"
end

post '/categories' do
  # CREATE
  @category = Category.new(params)
  @category.save
  redirect to("/categories")
end

post '/categories/:id' do
  # UPDATE
  @category = Category.update(params)
  redirect to "/categories/#{params[:id]}"
end

post '/categories/:id/delete' do
  # DELETE
end