# https://relishapp.com/rspec/rspec-mocks/v/3-6/docs/configuring-responses/calling-the-original-implementation
class Calculator
  def self.add(x, y)
    x + y
  end

  def self.sum(array)
    result = 0
    array.each { |n| result = self.add(result, n) }
    result
  end
end
