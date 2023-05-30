require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)

puts "Total Company Revenue: #{@total_revenue}"

puts "Average Company Revnue: #{@total_revenue / Store.count}"

high_revenue_stores_count = Store.where("annual_revenue >= ?", 1000000).count

puts "Number of stores generating $1M or more in annual sales: #{high_revenue_stores_count}"
