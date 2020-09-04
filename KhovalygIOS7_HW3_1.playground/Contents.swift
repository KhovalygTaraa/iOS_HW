/*
 Задача №1
 */

var boys = ["Henry", "William"]
var girls = ["Anna", "Judy", "Erika"]

for (_, element) in girls.enumerated(){
  boys.insert(element, at: boys.startIndex)
}
print("------ Задача №1 ------")
print(boys)

/*
 Задача №2
 */
var students = boys

students.sort(by: <)
print("\n------ Задача №2 ------")
print(students)

/*
 Задача №3
 */

var A = [1, -1, 2, -2, 3, -3, 4, -4, 5, -5]

A.sort(by: >)
print("\n------ Задача №3 ------")
print(A)
A = A.filter({$0 > 0})
print(A)

/*
 Задача №4
 */

var db = [["subject" : "Swift", "grade" : 3, "sex" : "W"],
          ["subject" : "Swift", "grade" : 5, "sex" : "W"],
          ["subject" : "Swift", "grade" : 4, "sex" : "M"],
          ["subject" : "Swift", "grade" : 4, "sex" : "W"],
          ["subject" : "Swift", "grade" : 5, "sex" : "M"]]
var tmp = zip(students, db)
var journal = Dictionary(uniqueKeysWithValues: tmp)

print("\n------ Задача №4 ------")
for (key, value) in journal {
  print("\(key) - \(value)")
}
