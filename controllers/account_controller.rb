require_relative "../models/account"

get '/account' do
  @account = Account.new
  erb :"account/index"
end