require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "should have many customer_addresses" do
    t = Customer.reflect_on_association(:customer_addresses)
    expect(t.macro).to eq(:has_many)
  end

  it "should have many purchases" do
    t = Customer.reflect_on_association(:purchases)
    expect(t.macro).to eq(:has_many)
  end
end
