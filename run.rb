#!/usr/bin/env ruby
require 'optparse'

options = {}
parser = OptionParser.new do |parser|
  parser.on('-i INPUT', '--input INPUT') { |v| options[:input] = v }
  parser.on('-d DAY', '--day DAY', Integer) { |v| options[:day] = v }
  parser.on('-p PART', '--part PART', Integer) { |v| options[:part] = v }
end
parser.parse!

missing_input = !options.keys.include?(:input)
missing_day = !options.keys.include?(:day)
missing_part = !options.keys.include?(:part)

if missing_input || missing_day || missing_part
  warn 'Input argument is required' if missing_input
  warn 'Day argument is required' if missing_day
  warn 'Part argument is required' if missing_part
  exit 1
end

require './solution_classes_map.rb'

solution_class = SOLUTION_CLASSES_MAP[options[:day]][options[:part]]

if solution_class.nil?
  warn 'Solution class not found in SOLUTION_CLASSES_MAP'
  exit 1
end

puzzle_input = File.read(options[:input])
start_time = Time.now
puzzle_answer = solution_class.process(puzzle_input)
elapsed_time = Time.now - start_time

def colorize(value, color_code)
  "\e[#{color_code}m#{value}\e[0m"
end

puts "Answer: #{colorize(puzzle_answer, 36)}\n"
puts "Done in #{colorize(elapsed_time.round(4), 32)} sec"
