require './lib/rpn_calculator'

describe RPNCalculator do
  let(:calculator) { RPNCalculator.new }
  it "should expect '-1' to return -1" do
    expect(calculator.evaluate("-1")).to eq -1
  end

  it "should expect '1 1 +' to return 2" do
    expect(calculator.evaluate("1 1 +")).to eq 2
  end

  it "should expect '1 -1 +' to return 0" do
    expect(calculator.evaluate("1 -1 +")).to eq 0
  end

  it "should expect '2 2 *' to return 4" do
    expect(calculator.evaluate("2 2 *")).to eq 4
  end

  it "should expect '5 10 -' to return -5" do
    expect(calculator.evaluate("5 10 -")).to eq 5 - 10
  end

  it "should expect '1 2 3 4 + + +' to return 1 + 2 + 3 + 4" do
    expect(calculator.evaluate("1 2 3 4 + + +")).to eq 1 + 2 + 3 + 4
  end

  it "should expect '1 2 + 3 4 + *' to return (2 + 1) * (4 + 3)" do
    expect(calculator.evaluate("1 2 + 3 4 + *")).to eq (2 + 1) * (4 + 3)
  end

  it "should expect '20 10 5 4 + * -' to return 20 - 10 * (5 + 4)" do
    expect(calculator.evaluate("20 10 5 4 + * -")).to eq 20 - 10 * (5 + 4)
  end
end
