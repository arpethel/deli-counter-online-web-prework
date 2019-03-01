require 'pry'
# let's remove name and only display the ticket number
# we're not going to use any arguments
@array =[98, 99]
@ticket_number = 100

# local_var
# @instance_var
# @@class_var
# $global_var

def line
  if @array.empty? == true
    phrase = "The line is currently empty."
  else @array.empty? == false
    phrase = "The line is currently:"
    @array.each_with_index { |t_num, i| phrase.concat(" #{i + 1}. #{t_num}") }
  end
  puts phrase
end

def take_a_number
  @array << @ticket_number += 1
  puts "Welcome, #{@ticket_number}. You are number #{@array.length} in line."
end

def now_serving
  if @array.empty? == true
    phrase = "There is nobody waiting to be served!"
  else
    phrase = "Currently serving #{@array.shift}."
  end
  puts phrase
end

binding.pry
puts "goodbye"

# def line(array)
#   if array.empty? == true
#     phrase = "The line is currently empty."
#   else array.empty? == false
#     phrase = "The line is currently:"
#     array.each_with_index { |name, i| phrase.concat(" #{i + 1}. #{name}") }
#   end
#   puts phrase
# end
#
# def take_a_number(array, name)
#   array << name
#   puts "Welcome, #{name}. You are number #{array.length} in line."
# end
#
# def now_serving(array)
#   if array.empty? == true
#     phrase = "There is nobody waiting to be served!"
#   else
#     phrase = "Currently serving #{array.shift}."
#   end
#   puts phrase
# end
