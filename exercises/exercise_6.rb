require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# 1. Add the following code directly inside the Store model (class): has_many :employees
class Store < ActiveRecord::Base
  has_many :employees
end

# 2. Add the following code directly inside the Employee model (class): belongs_to :store
class Employee < ActiveRecord::Base
  belongs_to :store
end

# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores):
# @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Michael", last_name: "Jordan", hourly_rate: 45)
@store2.employees.create(first_name: "Bruce", last_name: "Wayne", hourly_rate: 90)

# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls
#  to create (like you have before.) No need to assign the employees to variables though.
#  Create them through the @store# instance variables that you defined in previous exercises.
#  Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).
@store1.employees.create(first_name: "Kobe", last_name: "Bryant", hourly_rate: 44)
@store1.employees.create(first_name: "Shaquille", last_name: "O'Neal", hourly_rate: 34)
@store1.employees.create(first_name: "Larry", last_name: "Bird", hourly_rate: 33)
@store2.employees.create(first_name: "Clark", last_name: "Kent", hourly_rate: 60)
@store2.employees.create(first_name: "Tony", last_name: "Stark", hourly_rate: 88)
@store2.employees.create(first_name: "Bruce", last_name: "Banner", hourly_rate: 50)