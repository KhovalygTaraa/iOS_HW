/*
 Задача №1
 */

var taraa = (film: "Hobbit", number: 21, food: "Fried chicken")
let(film, number, food) = taraa
var kiril = (film: "Star Wars", number: 42, food: "Goulash")
var temp: (String, Int, String)

print("----- Задача №1 -----")
print("taraa:",taraa)
print("kirito:", kiril)

temp = taraa
taraa = kiril
kiril = temp

var new = (taraa.number, kiril.number, taraa.number - kiril.number)
print("\ntaraa:",taraa)
print("kirito:", kiril)
print("\nnew:", new)

/*
Задача №2
*/

var glen = (film: "World War Z", number: 10, food: "Meat")
var petr = (film: "Ninja Turtles", number: 4, food: "Pizza")
var minamoto = (film: "The Last Samurai", number: 1, food: "Sushi")
//kiril = (film: "Hobbit", number: 21, food: "Fried chicken")
//taraa = (film: "Star Wars", number: 42, food: "Goulash")
var array = [taraa, kiril, glen, petr, minamoto]

print("----- Задача №2 -----")

for (_, element) in array.enumerated(){
  print(element)
}
//решение без доп.массива:) (solution without additional array)
array = array.filter( { $0.number < 13 } )
 print("----------------------------------\n----- Extra data was deleted -----\n----------------------------------")

for (_, element) in array.enumerated(){
  print(element)
}

/*
 Задача №3
 */

typealias Chessman = [String: (alpha:Character, num: Int)?]
var Chessmans: Chessman = ["Black King": (alpha: "D", num: 1), "White Knight": (alpha: "F", num: 7), "White Bishop": (nil)]

if let info = Chessmans["White Knight"] {
  print("----- Задача №3 -----")
  print(info ?? "This piece was killed")
}
if let info = Chessmans["White Bishop"] {
  print(info ?? "This piece was killed")
}
/*
 Задача №4
 */
print("----- Задача №4 -----")
for element in Chessmans{
  if let info = Chessmans[element.key]{
    print(element.key, info ?? "was killed")
  }
}
