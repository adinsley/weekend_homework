WAREHOUSE = [
  
  {location:"b7",
  item:"bath fizzers",
  distance:27},

  {location:"a3",
  item:"blouse",
  distance:8},

  {location:"a7",
  item:"bookmark",
  distance:4 },


  {location:"c8",
  item:"candy wrapper",
  distance:18 },

  {location:"c3",
  item:"chalk",
   distance:13 },

 {location:"b10",
  item:"cookie jar",
  distance:30 },

]
# Problem 1________________________________
def item_at_bay(bay_number)
       for bay in WAREHOUSE
         if bay[:location] == bay_number
           name = bay[:item]
         end
      end 
      name
end    

# Problem 2________________________________

def bay_with_item(item_name)
WAREHOUSE.find{|bay| bay[:item] == item_name}[:location]
end

# Problm 3__________________________


def multiple_bays(item1, item2, item3)
  # required_bays = WAREHOUSE.select{|bay| bay[:item] == item1 || bay[:item] == item2 ||  bay[:item] == item3}
  required_bays = WAREHOUSE.select{|bay| bay[:item] == item1 || bay[:item] == item2 ||  bay[:item] == item3}
  
  required_bays.map{|bay| bay[:location]}.join(", ")

 end 

 #Problem 4______________________________

 def multiple_items(*location)
location.map!{|bay| bay = item_at_bay(bay)}.join(", ")
end










