require 'rails_helper'

RSpec.describe CustomerAddress, type: :model do
  it "should belong to customer" do
    t = CustomerAddress.reflect_on_association(:customer)
    expect(t.macro).to eq(:belongs_to)
  end
  
  it "should belong to address" do
    t = CustomerAddress.reflect_on_association(:address)
    expect(t.macro).to eq(:belongs_to)
  end
end
