require_relative '../lib/caesar_cipher'

describe "What caesar_cipher" do
  it "should shift 'string' n times" do
  	expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end