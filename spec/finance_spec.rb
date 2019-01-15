require_relative '../lib/finance'

describe "What day_trader" do
	it "should take the best moment to buy and to sell" do
		expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
	end
end