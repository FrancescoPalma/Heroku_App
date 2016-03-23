require_relative "../models/merchant.rb"
require_relative "../models/category.rb"
require_relative "../models/transaction.rb"

get "/transactions" do
  # INDEX
  @transaction = Transaction.new(params)
  @transactions = Transaction.all
  @merchants = Merchant.all
  @income = Income.all
  @categories = Category.all
  erb :"transactions/index"
end

get '/transactions/new' do
  #NEW
  @merchants = Merchant.all
  @categories = Category.all
  erb :"transactions/new"
end

get '/transactions/:id' do
  # SHOW
  @transactions = Transaction.all
  @merchants = Merchant.all
  @categories = Category.all
  @transaction = Transaction.find(params[:id])
  erb :"transactions/show"
end

get '/transactions/:id/edit' do
  # EDIT
  @merchants = Merchant.all
  @categories = Category.all
  @transaction = Transaction.find(params[:id])
  erb :"transactions/edit"
end

post "/transactions" do
  # CREATE
  @transaction = Transaction.new(params)
  @transaction.save
  redirect to ("/transactions")
end

post '/transactions/:id' do
  # UPDATE
  @transaction = Transaction.update(params)
  redirect to "/transactions/#{params[:id]}"
end

post '/transactions/:id/delete' do 
  # DELETE
  Transaction.delete(params[:id])
  redirect to '/transactions'
end