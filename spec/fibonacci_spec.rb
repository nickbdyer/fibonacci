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

end
