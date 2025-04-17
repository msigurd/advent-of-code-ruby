# Advent of Code - Ruby Template
Template for AoC solutions written in Ruby.

Tested and works with Ruby 2.0 and up.

## Run solutions

Copy the current puzzle input to a file named exactly `input`, placed in the correct day directory.

Then, following the structure described below, run from project root:

`ruby ./run.rb "day1" "part1"`

## Structure
For solutions to be found and ran by `run.rb`, they must be structured like:
```
solutions/
├─ day1/
│  ├─ input
│  ├─ part1.rb
│  ├─ part2.rb
├─ day2/
│  ├─ ...
```

Part classes need to be wrapped in a `Day{day}` module.

They must also inherit from `PartBase` class and have a public `process` method that returns the solution's output.

The puzzle input can be accessed through `PartBase`'s attr_reader `input`, or line by line through its method
`input_lines`.

For example:
```ruby
module Day1
  class Part1 < PartBase
    def process
      # TODO: return result of processing `input` or `input_lines`
    end
  end
end
```
