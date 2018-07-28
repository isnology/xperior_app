class Api::V1::DataImportsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    # import = Import::Store.new
    # import.run
    # import = Import::Customer.new
    # import.run
    # import = Import::Purchase.new
    # import.run
    CsvStore.new.load
    CsvCustomer.new.load
    CsvPurchase.new.load
  end
end
