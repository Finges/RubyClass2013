$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'week3'

describe 'Week3 block method' do

  subject{ Week3.new }

  # TODO: Write the spec and the code
  it '#run_me yields to a block' do
    expect {|x| subject.run_me(1, &x)}.to yield_control
  end
  # TODO: Write the spec and the code
  # method should take one parameter, an array of integers.
  #   ok to assume items are integers.
  # the method should return an array of integers.
  #   but it should ignore the even items.
  # method is an iterator, like #each, that goes through each item
  #   in the array passed in.
  # block can be the second parameter, or implicit.
  it '#each_odd iterates an array and yields the odd values to the block' do
    input = [1,2,3,4,5,6]
    expect {|x| subject.each_odd(input, &x)}.to yield_successive_args(1,3,5) 
  end

  it '#each_odd returns an array without even items' do
    input = [1,2,3,4,5,6,7,8,9,10,11]
    expected = [1,3,5,7,9,11]
    subject.each_odd(input){|x| puts x}.should eq expected
  end
end

