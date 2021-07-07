# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym_1 = Gym.new("gym 1")
gym_2 = Gym.new("gym 2")

lifter_1 = Lifter.new("lifter 1", 100)
lifter_2 = Lifter.new("lifter 2", 200)

membership_1 = Membership.new(20, lifter_1, gym_1)
membership_2 = Membership.new(10, lifter_2, gym_1)
membership_3 = Membership.new(30, lifter_2, gym_2)


binding.pry

puts "Gains!"
