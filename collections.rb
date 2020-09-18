#Arrays
kids_array = ["Adam", "Billy", "Molly", "Sally"]
kids_array[3] = "Terry"
kids_array
=> ["Adam", "Billy", "Molly", "Terry"]

#Types
number_array = [1,2,3,4,5]
string_array = ["Frank", "Suzy", "Doug", "Jane"]
mixed_array = [number_array, "a string", 13]

#Sorting arrays
string_array
=> ["Frank", "Suzy", "Doug", "Jane"]

string_array.sort!
=> ["Doug", "Frank", "Jane", "Suzy"]

#Adding or Pushing arrays
string_array
=> ["Doug", "Frank", "Jane", "Suzy"]
string_array << "Bill"
=> ["Doug", "Frank", "Jane", "Suzy", "Bill"]

string_array.push("Bill")
=> ["Doug", "Frank", "Jane", "Suzy", "Bill"]

#Hash
toy_chest = {
  "sea_monkeys" => 12,
  "dolls" => 5,
  "legos" => 514
}

#To access information in this hash, we can use brackets
toy_chest["sea_monkeys"]
=> 12

toy_chest["dolls"]
=> 5

toy_chest["legos"]
=> 514

#To add an item to our toy chest hash, we can simply use brackets
toy_chest["toy_cars"] = 7
=> 7

toy_chest
=> {"sea_monkeys" => 12, "dolls" => 5, "legos" => 514,
"toy_cars" => 7}

#Removing an element using delete method
toy_chest.delete("sea_monkeys")
=> 12

toy_chest
=> {"dolls" => 5, "legos" => 514, "toy_cars" => 7}

