

def line(customer_list)
  if customer_list.empty? == true
    puts "The line is currently empty."
  else
    to_print = "The line is currently:"
    customer_list.each_with_index {|customer, index|
       to_print += " #{index + 1}. #{customer}"
    }
    puts to_print
  end
end

def take_a_number(customer_list, name)
  customer_list << name
  place = customer_list.find_index(name)
  puts "Welcome, #{name}. You are number #{place + 1} in line."
end

def now_serving(customer_list)
  if customer_list.empty? == true
    puts "There is nobody waiting to be served!"
  else
    next_in_line = customer_list.shift
    puts "Currently serving #{next_in_line}."
  end
end
