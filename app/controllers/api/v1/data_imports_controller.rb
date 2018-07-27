class Api::V1::DataImportsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    import = Import::Customer.new
    import.run
  end
end
