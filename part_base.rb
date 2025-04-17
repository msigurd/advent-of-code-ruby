class PartBase
  def initialize(input)
    @input = input
  end

  def process
    raise NotImplementedError, 'process not implemented in subclass'
  end

  private

  attr_reader :input

  def input_lines
    input.split("\n")
  end
end
