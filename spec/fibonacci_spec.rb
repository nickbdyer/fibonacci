require 'benchmark'
require 'fibonacci'

describe Fibonacci do

  it "can return the first number in the fibonacci sequence" do
    expect(Fibonacci.get_value(1)).to eq 0
    expect(Fibonacci.rec_get_value(0)).to eq 0
    expect(Fibonacci.hash_get_value(0)).to eq 0
  end

  it "can return the second number in the fibonacci sequence" do
    expect(Fibonacci.get_value(2)).to eq 1
    expect(Fibonacci.rec_get_value(1)).to eq 1
    expect(Fibonacci.hash_get_value(1)).to eq 1
  end

  it "can return the third number in the fibonacci sequence" do
    expect(Fibonacci.get_value(3)).to eq 1
    expect(Fibonacci.rec_get_value(2)).to eq 1
    expect(Fibonacci.hash_get_value(2)).to eq 1
  end

  it "can return the tenth number in the fibonacci sequence" do
    expect(Fibonacci.get_value(10)).to eq 34
    expect(Fibonacci.rec_get_value(9)).to eq 34
    expect(Fibonacci.hash_get_value(9)).to eq 34
  end

  it "can return the fifty first number in the fibonacci sequence" do
    expect(Fibonacci.get_value(51)).to eq 12586269025
    expect(Fibonacci.hash_get_value(50)).to eq 12586269025
  end

  it "can return the 100th number in the fibonacci sequence" do
    expect(Fibonacci.get_value(100)).to eq 218922995834555169026
    expect(Fibonacci.hash_get_value(99)).to eq 218922995834555169026
  end
  
  it "can return the 1000th number in the fibonacci sequence" do
    expect(Fibonacci.get_value(1000)).to eq 26863810024485359386146727202142923967616609318986952340123175997617981700247881689338369654483356564191827856161443356312976673642210350324634850410377680367334151172899169723197082763985615764450078474174626 
    expect(Fibonacci.hash_get_value(999)).to eq 26863810024485359386146727202142923967616609318986952340123175997617981700247881689338369654483356564191827856161443356312976673642210350324634850410377680367334151172899169723197082763985615764450078474174626 
    puts Benchmark.realtime {Fibonacci.get_value(10000)}
    puts Benchmark.realtime {Fibonacci.hash_get_value(999)}
    puts Benchmark.realtime {Fibonacci.get_value(4100)}
    puts Benchmark.realtime {Fibonacci.hash_get_value(4099)}
  end

end
