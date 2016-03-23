require_relative "../models/merchant.rb"
require_relative "../models/category.rb"
require_relative "../models/transaction.rb"

get "/merchants" do
  # INDEX
  @merchant = Merchant.new(params)
  @transactions = Transaction.all
  @merchants = Merchant.all
  @categories = Category.all
  erb :"merchants/index"
end

get "/merchants/new" do
  # NEW
  @transactions = Transaction.all
  @categories = Category.all
  erb :"merchants/new"
end

get '/merchants/:id' do
  # SHOW
  @merchant = Merchant.find(params[:id])
  @transactions = Transaction.all
  @categories = Category.all
  erb :"merchants/show"
end

get '/merchants/:id/edit' do
  # EDIT
  @merchant = Merchant.find(params[:id])
  @transactions = Transaction.all
  @categories = Category.all
  erb :"merchants/edit"
end

post '/merchants' do
  # CREATE
  @merchant = Merchant.new(params)
  @merchant.save
  redirect to("/merchants")
end

post '/merchants/:id' do
  # UPDATE
  @merchant = Merchant.update(params)
  redirect to "/merchants/#{params[:id]}"
end

post '/merchants/:id/delete' do
  # DELETE
end