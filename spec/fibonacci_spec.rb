require 'fibonacci'

describe Fibonacci do

  it "can return the first number in the fibonacci sequence" do
    expect(Fibonacci.get_value(1)).to eq 0
  end

end
