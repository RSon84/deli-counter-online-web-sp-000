# Write your code here.


def line(array) # this was the one I figured out
  if array.length >= 1
    katz_deli = []
    counter = 1
    array.each do |name|
      katz_deli.push("#{counter}. #{name}")
      counter += 1
    end
    puts "The line is currently: #{katz_deli.join(" ")}"
  else
    puts "The line is currently empty."
  end
end


def line_simple(array) # this one follows the same mechanics as learn.co
  current_line = "The simple line is currently:"
  array.each.with_index(1) do |value, indexemus|
  # "each.with_index" is the method...must use "index"
    current_line << " #{indexemus}. #{value},"
    # "indexemus" is used to illustrate this variable can be different from "index"
  end
  puts current_line
end




def take_a_number(line, new_person)
  line.push(new_person) # could say: "line << new_person"
  puts "Welcome, #{new_person}. You are number #{line.length} in line."
end


def now_serving(line)
  if line.length == 0 # could say: "if deli.empty?"
    puts"There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}." # could say: "Currently serving #{line.first}."
    line.shift # this works in the IDE but no on repl.it
  end
end
