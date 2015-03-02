class Fibonacci

  def self.get_value(at_position)
    sequence = [0, 1]
    (at_position - 2).times do
      sequence << (sequence.last + sequence[-2])
    end
    return sequence[(at_position - 1)]
  end

  def self.rec_get_value(n)
    return n if n <= 1
    self.rec_get_value(n - 1) + self.rec_get_value(n - 2)
  end

  def self.hash_get_value(n)
    fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }
    fibonacci[n]
  end

end
