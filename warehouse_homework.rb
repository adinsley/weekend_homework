require 'pry-byebug'

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

  {location:"b9",
   item:"deodorant",
   distance:29 },

   {location:"c2",
    item:"drill press",
    distance:12 },

    {location:"c6",
     item:"face wash",
     distance:16 },

     {location:"a9",
      item:"glow stick",
      distance:2 },

   {location:"a4",
    item:"hanger",
    distance:7 },   

   {location:"c10",
    item:"leg warmers",
    distance:20 }, 

    {location:"a8",
     item:"model car",
     distance:3 },

   {location:"b5",
    item:"nail filer",
    distance:25 },  

   {location:"a1",
    item:"needle",
    distance:10 }, 

    {location:"c7",
     item:"paint brush",
     distance:17 },

    {location:"b4",
     item:"photo album",
     distance:24 }, 

     {location:"b3",
      item:"picture frame",
      distance:23 },

      {location:"a10",
       item:"rubber band",
       distance:1 },

       {location:"a5",
        item:"rubber duck",
        distance:6 },

       {location:"c1",
        item:"rusty nail",
        distance:11 }, 

       {location:"b2",
        item:"sharpie",
        distance:22 }, 

      {location:"c9",
       item:"shoe lace",
       distance:19 },

       {location:"a6",
        item:"shovel",
        distance:5 },

       {location:"a2",
        item:"stop sign",
        distance:9 }, 

        {location:"c5",
         item:"thermometer",
         distance:15 },

          {location:"b1",
          item:"thermometer",
          distance:21 },

         {location:"b1",
          item:"tyre swing",
          distance:21 }, 

      {location:"b8",
       item:"tissue box",
       distance:28 },    

       {location:"b6",
        item:"tooth paste",
        distance:26 },

        {location:"c4",
         item:"word search",
         distance:14 },


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
  required_bays = WAREHOUSE.select{|bay| bay[:item] == item1 || bay[:item] == item2 ||  bay[:item] == item3}
  
  
  required_bays.map{|bay| bay[:location]}.join(", ")

 end 

 #Problem 4______________________________

def multiple_items(*location)
location.map!{|bay| bay = item_at_bay(bay)}.join(", ")
end

# Problem 5___________________

# def distance_between_items(location1, location2)
#   required_bays = WAREHOUSE.select{|bay| bay[:location] == location1 || bay[:location] == location2}  

#   required_bays.map!{|bay| bay[:distance]}

# required_bays.max - required_bays.min
# end

# def distance_between_items(*locations)
#   required_bays = WAREHOUSE.select do |bay| 
    
#     locations.include?(bay[:location])
#   end
  

#   required_bays.map!{|bay| bay[:distance]}

#   required_bays.max - required_bays.min
# end

# Problem 6_________________________________________


# def order_from_entrance(*items)

#   required_bays = WAREHOUSE.select do |bay| 
      
#   items.include?(bay[:item])

#   end


# ordered_route = required_bays.sort_by { |bay| bay[:distance] }

# ordered_route.map{|bay| "#{bay[:location]} #{bay[:item]}" }.join(" - ")

# end  


# Alternate Problem 6

def order_from_entrance(array)

required_bays = WAREHOUSE.select do |bay| 
      
array.include?(bay[:item])

 end


ordered_route = required_bays.sort_by { |bay| bay[:distance] }

ordered_route.map{|bay| "#{bay[:location]} #{bay[:item]}" }.join(" - ")

end  






