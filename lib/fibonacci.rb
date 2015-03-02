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
end
