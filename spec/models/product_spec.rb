require 'rails_helper'

RSpec.describe Product, type: :model do
  it "should have many skus" do
    t = Product.reflect_on_association(:skus)
    expect(t.macro).to eq(:has_many)
  end
end
