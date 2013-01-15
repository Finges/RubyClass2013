describe 'Everything is an Object!' do

  it "Objects have methods" do
    'two'.methods.should include :upcase
  end

  it "Objects have a class" do
    'two'.class.should eq String
  end

  it "Objects can be sent messages" do
    'two'.send(:upcase).should eq 'TWO'
    # that code sends the message 'upcase' to the string 'two'
    # same result as: 'two'.upcase
  end

  it 'Strings are objects' do
    "Two".should be_a Object
  end

  it 'Numbers are objects' do
    15.should be_a  Object
  end

  it 'Hashes are objects' do
    {:one => 1}.should be_a Object
  end

  it 'Arrays are objects' do 
    [5,4,3].should be_a Object
  end

  it 'Expressions evaluate to objects' do
    (4 * 5).should be_a Object
  end

  it 'Symbols are objects' do
    :test.should be_a Object
  end

  it 'Classes are objects' do
    String.should be_a Object
  end

  it 'floats are objects' do
    4.5.should be_a Object
  end

end