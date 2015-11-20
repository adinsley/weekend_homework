require_relative  './warehouse_homework'

# found_item = item_at_bay("c8")
# puts "item at c8 found is #{found_item}"
# expect to be nail file

# found_bay = bay_with_item("chalk")
# puts "chalk is found at bay #{found_bay}"
# expect to be chalk

found_bays = multiple_bays("bath fizzers", "bookmark", "cookie jar")
puts "required bays are #{found_bays}"

found_items = multiple_items("b7", "c8")
puts "required items are #{found_items}"