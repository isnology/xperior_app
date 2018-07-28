class Api::V1::DataImportsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    V1::CsvStore.new.load
    V1::CsvCustomer.new.load
    V1::CsvPurchase.new.load
    
    
  end
end
