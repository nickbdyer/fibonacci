require 'fibonacci'

describe Fibonacci do

  it "can return the first number in the fibonacci sequence" do
    expect(Fibonacci.get_value(1)).to eq 0
  end

  it "can return the second number in the fibonacci sequence" do
    expect(Fibonacci.get_value(2)).to eq 1
  end

  it "can return the third number in the fibonacci sequence" do
    expect(Fibonacci.get_value(3)).to eq 1
  end

  it "can return the tenth number in the fibonacci sequence" do
    expect(Fibonacci.get_value(10)).to eq 34
  end

  it "can return the fifty first number in the fibonacci sequence" do
    expect(Fibonacci.get_value(51)).to eq 12586269025
  end

  
end
