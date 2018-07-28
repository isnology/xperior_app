require 'rails_helper'

RSpec.describe StoreAddress, type: :model do
  it "should belong to store" do
    t = StoreAddress.reflect_on_association(:store)
    expect(t.macro).to eq(:belongs_to)
  end
  
  it "should belong to address" do
    t = StoreAddress.reflect_on_association(:address)
    expect(t.macro).to eq(:belongs_to)
  end
end
