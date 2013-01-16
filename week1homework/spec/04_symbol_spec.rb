describe "Symbols" do

  it "are not like strings, which can have duplicate content in multiple objects" do
    "only_one".object_id.should_not eq "only_one".object_id
  end

  it "only exist once" do
    ("only" + "one").to_sym.object_id.should eq :onlyone.object_id
  end

  it "are of class Symbol" do 
    :test.should be_a Symbol
  end
  
  it "are not the same as a string of the same characters" do
    :test.should_not eq "test"
  end
  
  it "are convertable to strings" do
    :test.to_s.should eq "test"
  end

  it "are convertable from a string" do
    "test".to_sym.should eq :test
  end

  it "automatically converts to a string when interpolated" do
    "test #{:test}".should eq "test test"
  end
  
end