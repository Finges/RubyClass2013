$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'business'

describe Business do
	subject { Business.new 'Pepsi', '12345' }

	it "attributes should be initialized" do
		"#{subject.name}".should eq "Pepsi"	
	end

	it "allows address to be set" do
		expected = "123 street"
		subject.address = expected
		subject.address.should eq expected
	end

	it "allows hours to be set" do
		expected = "8-9pm"
		subject.hours = expected
		subject.hours.should eq expected		
	end
	
	it "returns business card format" do
		subject.address = "123 street"
		subject.hours = "8-9pm"
		subject.business_card.should eq "Pepsi\n=====\n\n123 street\nOpen: 8-9pm\nTax Id: 12345"	
	end

end

