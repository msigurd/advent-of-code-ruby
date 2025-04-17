raise 'Missing day and/or part arguments' if ARGV.count <= 1

day, part = ARGV.map { |arg| arg[-1].to_i }.values_at(0, 1) # => e.g. 1, 1

require "./solutions/day#{day}/part#{part}"

part_class = Object.const_get("Day#{day}::Part#{part}")
puzzle_input = File.read("./solutions/day#{day}/input")

puts part_class.new(puzzle_input).process
