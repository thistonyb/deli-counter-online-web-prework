

def line(customer_list)
  counter = 1
  if customer_list.empty? == true
    puts "The line is currently empty."
  else
    to_print = "The line is currently:"
    customer_list.each do |customer|
       to_print += " #{counter}. #{customer}"
       counter += 1
    end
    puts to_print.chomp
  end
end

def take_a_number (customer_list, name)
  customer_list << name
  place = customer_list.index(name)
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
