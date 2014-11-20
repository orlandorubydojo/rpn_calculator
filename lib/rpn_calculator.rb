class RPNCalculator
  def evaluate(input)
    stack = []
    token = input.split
    token.each do |t|
      if t == "+"
        a = stack.pop(2)
        stack << a[0] + a[1]
      elsif t == "*"
        a = stack.pop(2)
        stack << a[0] * a[1]
      elsif t == "-"
        a = stack.pop(2)
        stack << a[0] - a[1]
      elsif t.to_i.is_a? Integer
        stack << t.to_i
      end
    end
    stack.first
  end
end
