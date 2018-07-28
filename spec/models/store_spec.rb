require 'rails_helper'

RSpec.describe Store, type: :model do
  it "should have many store_addresses" do
    t = Store.reflect_on_association(:store_addresses)
    expect(t.macro).to eq(:has_many)
  end

  it "should have many addresses" do
    t = Store.reflect_on_association(:addresses)
    expect(t.macro).to eq(:has_many)
  end

  it "should have many purchases" do
    t = Store.reflect_on_association(:purchases)
    expect(t.macro).to eq(:has_many)
  end
end
