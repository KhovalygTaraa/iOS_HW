/*
 Задача №1. Часть 1.
 */

var optional: String? = "Optional is like a box"
var opinion: String? = "Understandable"
var questions: String? = nil

print("----- Задача№1 -----\n------ Часть1 ------")
print(optional ?? "Oops, \'nil\' detected!")
print(opinion ?? "Oops, \'nil\' detected!")
//в данном случае questions = nil, распечатается второе.
print(questions ?? "Oops, \'nil\' detected!")
questions = "I have question!"
//так как выше мы присвоили questions значение, то распечатается первое.
print(questions ?? "Oops, \'nil\' detected!")

/*
 Задача №1. Часть 2.
 */

let apples = "10"
let oranges = "5"
let bananas = "20"
let mango = "3 maybe"
let pineapples = "7 maybe"
var sum = 0;
var error = 0;

if let apples = Int(apples) {
  sum += apples
} else {
  error += 1
}
if let value2 = Int(oranges) {
  sum += value2
} else {
  error += 1
}
if let value3 = Int(bananas) {
  sum += value3
} else {
  error += 1
}
if let value4 = Int(mango) {
  sum += value4
} else {
  error += 1
}
if let value5 = Int(pineapples) {
  sum += value5
} else {
  error += 1
}

print("------ Часть2 ------")
print("Sum =", sum)
print("Error =", error)

/*
Задача №2.
*/
let number: Optional<Int> = Int("21")

print("\n----- Задача№2 -----")
if let value = number {
  if value > 0 && value <= 9 {
    print("Today's outside temperature is more than 0 degrees")
  }
  else if value < 0 && value >= -9 {
    print("Today's outside temperature is less than 0 degrees")
  }
  else if value >= 10 {
    print("Winter is far away")
  }
  else if value <= -10 {
    print("Winter is coming")
  } else {
    print("Today's outside temperature is 0 degrees")
  }
} else {
  print("Thermometer is broken")
}


