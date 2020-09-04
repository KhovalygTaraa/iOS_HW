/* *************************************************** Задача 1 *************************************************** */
/*                                                                                                                  */
/*  Возраст человека - Int8 и больше.                                                                               */
/*                                                                                                                  */
/*  Население города - Int32 и больше, т.к. макс значения до 2_147_483_647.                                         */
/*                                                                                                                  */
/*  Число звезд в галактике - Тут подойдет Int64, т.к. звезд может быть от 200 до 400 млрд.                         */
/*                                                                                                                  */
/*  Один байт ОЗУ - Int8 и больше.                                                                                  */
/*                                                                                                                  */
/*  Средняя зарплата за год - На мой взгляд Int64, т.к. в Иране человек может получить зарплату больше чем Int32    */
/*                                                                                                                  */
/*  Цвет фигуры - для описание подойдет тип String;                                                                 */
/*                                                                                                                  */
/*  Длина в мм - Int, Float, Double зависит от требований.                                                          */
/*                                                                                                                  */
/*  Длина в см - Int, Float, Double зависит от требований.                                                          */
/*                                                                                                                  */
/*  Фамилия человека - String.                                                                                      */
/*                                                                                                                  */
/*  Время года - String.                                                                                            */
/*                                                                                                                  */
/*  Пол человека - String или Character.                                                                            */
/*                                                                                                                  */
/* **************************************************************************************************************** */


/* *************************************************** Задача 2 *************************************************** */

let age: Int = 23
let byte: Int = 8
let color: String = "White"
let familyName: String = "Khovalyg"
var people: Int = 12_000_000
var stars: Int64 = 200_000_000_000_000
var salary: Int64 = 5_000_000_000
var season: String = "Winter"
var sex: Character = "M"
var mm: Float = 125355.6
var sm: Double = 125355555555555.6

print("-----Задача2-----")
print(age)
print(people)
print(stars)
print(byte)
print(salary)
print(color)
print(mm)
print(sm)
print(familyName)
print(season)
print(sex)

/* **************************************************************************************************************** */


/* *************************************************** Задача 3 *************************************************** */

var developerSalary: Int = 55_000
var hrSalary: Int = 40_000
let lawyerSalary: Int = 70_000

developerSalary *= 2
hrSalary += 15_000

print("-----Задача3-----")
print(developerSalary)
print(hrSalary)
print(lawyerSalary)

/* **************************************************************************************************************** */