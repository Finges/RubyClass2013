
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
      "Test String".should be_a String
    end
    
    it "can contain bare single-quote (') characters" do
      "test string '".should eq 'test string \''
    end
    
    it "allow the escape of double quote (\") characters" do
      "test string \"".should eq 'test string "'
    end
    
    it "allow interpolation (Ruby code within the string)" do
      "test string #{5 * 5}".should eq 'test string 25'
    end
    
    it "replace \t with a tab character" do
      "test string \t".should eq "test string \011"
    end

    it "replace \n with a newline character" do
      "\n".should eq "\12"
    end

    it "replaceS special characters when values are specified at the end via '% [value]'" do
      animal = "%s is a animal" % ["cat"]
      animal.should eq "cat is a animal"
    end
    
  end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String" do
      'test string'.should be_a String
    end
    
    it "allow double-quote (\") characters" do
      'test string "'.should eq "test string \""
    end

    it "allow the escape of single quote (') characters" do
      'test string \''.should eq "test string '"
    end
    
    it "does not interpolate Ruby code" do
      'test string #{5 * 5}'.should_not eq 'test string 25'
    end
    
    it "does not escape newline characters" do
      'test string \n'.should eq "test string \\n"
    end
    
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
      %{test string}.should eq "test string"
    end

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
      %|test string|.should eq 'test string'
    end

  end

end