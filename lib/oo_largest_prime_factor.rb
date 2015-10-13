# Enter your object-oriented solution here!
require 'pry'
class LargestPrimeFactor
  # 13195 are 5, 7, 13 and 29
  attr_reader :num_array
  def initialize
    @num_array = [1, 2, 3, 4, 5, 6, 7]
    self.find_prime(num_array)
  end

  # create an array of the whole numbers between 1 and the number
  # iterate through each number in the array, checking to see if the remainder of 
  #     a) dividing it by 1
  # and b) dividing it by itself 
  # is zero 
  # if both are true, return it in a new array

  def find_prime(num_array)
    new_array = Array.new
    num_array.map do |num|
      result_one = num % 1
      result_two = num % num
      if result_one && result_two == 0
        new_array << num
      else
        nil
      end
    end
    binding.pry
  end

  test = LargestPrimeFactor.new
end