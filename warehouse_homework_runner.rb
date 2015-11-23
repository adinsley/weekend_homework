require_relative  './warehouse_homework'

# found_item = item_at_bay("c8")
# puts "item at c8 found is #{found_item}"
# expect to be nail file

# found_bay = bay_with_item("chalk")
# puts "chalk is found at bay #{found_bay}"
# expect to be chalk

# found_bays = multiple_bays("bath fizzers", "bookmark", "cookie jar")
# puts "required bays are #{found_bays}"

# found_items = multiple_items("b7", "a3")
# puts "required items are #{found_items}"

# distance = distance_between_items("b7", "a3")
# puts "the furthest distance between items is #{distance}"]
item_array = []
while true
puts "Please enter items required, when finished enter stop"
answer = gets.chomp.downcase
item_array = item_array.push(answer)
if answer == "stop"
break
end
end


route = order_from_entrance(item_array)
puts route


