puts "Do you want to convert length(inches or meters), temperature(F or C), or currency(euro or dollar)?"
response_unit = gets.chomp

def unit(response)
  if response == "temperature"
   puts "What do you want to convert C or F?"
  response_temp = gets.chomp
    check_temp(response_temp)
  elsif response == "length"
    puts "What do you want to convert inches or meters"
response_length = gets.chomp
    check_length(response_length)
  elsif response == "currency"
    puts "Do you want to convert euros or dollars?"
    response_currency = gets.chomp
    check_currency(response_currency)
else "please pick length or temperature"
end
end




def check_length(unit)
  if unit == "inches"
    conversion_length("in")
  elsif unit == "meters"
    conversion_length("m")
  else
    puts "Please put in inches or meters"
  end
end

def conversion_length(unit)
  if unit == "in"
    puts "How many inches?"
 number = gets.chomp.to_f
     number / 39.37
   elsif unit == "m"
    puts "How many meters"
 number = gets.chomp.to_f
    number * 39.37
   end
 end

def check_temp(unit)
  if unit == "C"
    conversion_temp("C")
    elsif unit == "F"
    conversion_temp("F")
  else
    puts "Please put in C or F"
  end
end

def conversion_temp(unit)
  if unit == "C"
     puts "What number do you want to convert?"
 number = gets.chomp.to_f
     number * (9/5) + 32
   elsif unit == "F"
     puts "What number do you want to convert?"
 number = gets.chomp.to_f
     (number - 32) * 5 / 9
   end
 end

def check_currency(unit)
  if unit == "euros"
    conversion_length("E")
  elsif unit == "dollars"
    conversion_length("D")
  else
    puts "Please put in euros or dollars"
  end
end

def conversion_currency(unit)
  if unit == "E"
    puts "How many euros do you want to convert?"
 number = gets.chomp.to_f
     number * 1.13
   elsif unit == "D"
    puts "How many dollars do you want to convert?"
 number = gets.chomp.to_f
    number / 1.13
   end
 end

puts unit(response_unit)