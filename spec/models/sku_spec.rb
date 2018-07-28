require 'rails_helper'

RSpec.describe Sku, type: :model do
  it "should belong to products" do
    t = Sku.reflect_on_association(:product)
    expect(t.macro).to eq(:belongs_to)
  end

  it "should have many purchases" do
    t = Sku.reflect_on_association(:purchases)
    expect(t.macro).to eq(:has_many)
  end
end
