require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Adam", last_name: "McPhee", hourly_rate: 90)
@store1.employees.create(first_name: "Larry", last_name: "Smith", hourly_rate: 30)
@store1.employees.create(first_name: "Bob", last_name: "Ross", hourly_rate: 80)
@store2.employees.create(first_name: "Cindy", last_name: "Chow", hourly_rate: 90)
@store2.employees.create(first_name: "DeeDee", last_name: "Johnson", hourly_rate: 100)
@store2.employees.create(first_name: "Dave", last_name: "Wright", hourly_rate: 80)