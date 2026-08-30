class Solution
  def self.process(input)
    new(input).process
  end

  def initialize(input)
    @input = input
  end

  def process
    raise NotImplementedError, '`process` method not implemented'
  end

  private

  attr_reader :input
end
