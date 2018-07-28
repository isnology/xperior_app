require 'rails_helper'

RSpec.describe Address, type: :model do
  it "should have one customer_addresses" do
    t = Address.reflect_on_association(:customer_addresses)
    expect(t.macro).to eq(:has_one)
  end

  it "should have one store_addresses" do
    t = Address.reflect_on_association(:store_addresses)
    expect(t.macro).to eq(:has_one)
  end
end
