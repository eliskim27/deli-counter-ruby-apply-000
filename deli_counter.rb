def line(katz_deli)                                               #show current line
  if katz_deli.empty?                                             #check if line empty
    puts "The line is currently empty."
  else
    people_waiting = "The line is currently:"                     #need var for output(string)
    katz_deli.each.with_index(1) do |person, index|               #iterate over array pulling the person and their index starting at 1
    people_waiting << " #{index}. #{person}"                      #add index and person onto end of people_waiting var (all string)
    end
    puts people_waiting
  end
end


def take_a_number(katz_deli, new_person)                          #new customer needs ticket
  place = katz_deli.count + 1                                     #need var for how many in line +1
  katz_deli << new_person                                         #add value to end of array(shovel)
  puts "Welcome, #{new_person}. You are number #{place} in line."
end


def now_serving(katz_deli)                                        #first customer being served
  if katz_deli.empty?         
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."                  #recall first value
    katz_deli.shift                                               #remove first value from array
  end
end

#new method. only numbers. customer comes in, gets a number
#two var: customer numer of the day, specific place in line

$x = 1
def deli_test(katz_deli)
  cust_numb = $x
  katz_deli << cust_numb
  line_length = katz_deli.count
  puts "Welcome, your ticket number is #{cust_numb}. You are number #{line_length} in line."
  $x += 1
end
  
  
  
  
  
  
  
  
  
  
  