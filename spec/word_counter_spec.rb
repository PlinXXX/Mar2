require_relative '../lib/word_counter'

describe "what word_counter" do
	it "" do
		expect(word_counter("below", dictionary)).to eq({"below"=>1, "low"=>1})
		expect(word_counter("Howdy partner, sit down! How's it going?", dictionary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
	end
end
