describe "Integers" do

  it "have methods (just like all objects)" do
    1.should respond_to :+
  end

  it "can use underscores, to be easy on the eyes" do
    1_000_000.should eq 1000000
  end

  it "can be added" do
    (1 + 2).should eq 3
  end

  it "can be subtracted" do
    (4 - 2).should eq 2
  end

  it "can be multiplied" do
    (4 * 2).should eq 8
  end

  it "support exponentiation" do
    (4 ** 2).should eq 16
  end

  it "support modulo" do
    (5 % 2).should eq 1
  end

  it "are usually of class Fixnum" do
    5.should be_a Fixnum
  end

  it "that are are very large are of class Bignum" do
    333333333333333333333333333.should be_a Bignum
  end

  it "are returned from Integers calculations" do
    (5 + 1).should be_a Integer
  end

end

describe "Floats" do

  it "have their own class" do
    (1.0).should be_a Float
  end

  it "are returned when calculations include a Float" do
    (5.5 * 2.1).should be_a Float
  end

end

describe "Other Ruby classes" do

  it "are returned when calculations include a rational" do
    Rational(1, 3).should be_a Rational
  end

end