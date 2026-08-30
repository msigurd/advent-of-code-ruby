# Advent of Code - Ruby Template
Template for Advent of Code solutions written in Ruby.

Tested and works with Ruby 2.0 and up.

## Run solutions

Following the structure described below, run from project root:

```bash
ruby ./run.rb --input PATH-TO-INPUT --day 1 --part 1
```

## Structure
Solution classes can be placed in `solutions/`:
```
solutions/
├─ day1/
│  ├─ part1.rb
│  ├─ part2.rb
├─ day2/
│  ├─ part1.rb
├─ .gitkeep
```

The solution class must inherit from `Solution`, and implement a public `process` method:
```ruby
# solutions/day1/part1.rb

require_relative '../../solution.rb'

module Day1
  class Part1 < Solution
    def process
      # return result of processing `input`
    end
  end
end

```

Lastly, it must be mapped to the correct day and part in solution_classes_map.rb:
```ruby
# solution_classes_map.rb

Dir['./solutions/**/*.rb'].each { |file| require file }

SOLUTION_CLASSES_MAP = {
  1 => {
    1 => Day1::Part1,
    2 => Day1::Part2,
  },
  2 => {
    1 => Day2::Part1,
  },
}

```
