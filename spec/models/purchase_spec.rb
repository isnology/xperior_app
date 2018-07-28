require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it "should belong to sku" do
    t = Purchase.reflect_on_association(:sku)
    expect(t.macro).to eq(:belongs_to)
  end

  it "should belong to store" do
    t = Purchase.reflect_on_association(:store)
    expect(t.macro).to eq(:belongs_to)
  end

  it "should belong to customer" do
    t = Purchase.reflect_on_association(:customer)
    expect(t.macro).to eq(:belongs_to)
  end
end
