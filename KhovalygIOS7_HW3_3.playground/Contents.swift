import UIKit
//: Домашнее задание необходимо выполнить в данном файле, перед отправкой переименуйте название файла (латиницей) в формате ФамилияГруппаDZ4_3, например, *IvanovIOS4_DZ4_3*, заархивировать и приложить в личном кабинете для проверки.
/*:
 Чтобы успешно выполнить это домашнее задание, необходимо усвоить следующие темы:
 * [Коллекции eng.](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)
 * [Коллекции  рус.](https://swiftbook.ru/content/languageguide/collection-types/)
 * [Управление потоком eng.](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
 * [Управление потоком рус.](https://swiftbook.ru/content/languageguide/control-flow/)
 * [Функции eng.](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)
 * [Функции рус.](https://swiftbook.ru/content/languageguide/functions/)
*/
//: ## Задача №1
//: В данной задаче Вы тренируетесь Добавлять и Удалять значения в **`Хранилище (массив)`** при помощи двух функций, которые Вам и нужно реализовать. Функции принимают значение, но ничего не возвращают.
//: Первая функция добавляет элемент в массив, вторая функция удаляет элемент из массива, вы сами можете выбрать любой удобный для вас вариант добавления и удаления элементов из массива.
//: ### Алгоритм решения:
//:  * Создайте пустой массив строк типа String на любимую тематику, например, это будет Хранилище столовых приборов (этот пример не использовать), в который вы будете поочередно добавлять или удалять ложки, вилки и т.п. приборы.
//: * Создайте 2 функции в соответствии с условием.
//: * Попробуйте добавлять и удалять значения в массиве при помощи созданных функций.
//: * Что произойдет, если попытаетесь удалить значение, которого нет в Хранилище? Напишите, что в этом случае вы можете изменить в своей функции и внесите в нее изменения.
//: * *(условие со звездочкой - не обязательное) обе функции должны принимать массив и значение. Они должны добавлять или удалять значения в массиве. Функция удаления должна быть безопасной, т.е. если Хранилище пустое, мы должны сообщить об этом пользователю, если запрашиваемое на удаление значение отсутствует, необходимо также сообщить, что такого элемента нет. Запрещается использование forced unwrapping, если в вашем варианте будет необходимость работать с опционалами.*
// Решение задачи №1:

var weapon: [String] = []

func add(_ newElement: String) {
  print("We have a new weapon in our WeaponShop -", newElement)
  weapon.append(newElement)
}

func delete(_ element: String) {
  guard weapon.contains(element) else {
    print("Sorry, we don't have weapon -", element)
    return
  }
  guard let index = weapon.firstIndex(of: element) else { return }
  print("Congrats you bought - \(element)")
  weapon.remove(at: index)
}
print("------ Задача №1 ------")
//пустой массив
print(weapon)
add("Sword")
add("Axe")
//массив с двумя элементами
print(weapon)
delete("Spear")
delete("Axe")
//из массива удалили Axe
print(weapon)

/*
Задача №1 - условие со звездочкой
*/

func addWeapon(_ newElement: String, _ array: inout [String]) {
  print("We added new element - \"\(newElement)\" in specified array")
  array.append(newElement)
}

func deleteWeapon(_ element: String, _ array: inout [String]) {
  if array.isEmpty {
     print("Array is empty")
     return
   }
  guard array.contains(element) else {
    print("This element isn't exixt at this array -", element)
    return
  }
  guard let index = array.firstIndex(of: element) else { return }
  print("We removed element - \(element)")
  array.remove(at: index)
}

var rangedWeapon: [String] = []
var meleeWeapon: [String] = []

print("------ Задача №1* ------")
//Проверям пустой ли массив (по условию в задаче)
deleteWeapon("afa", &rangedWeapon)
//Add weapons
addWeapon("Halberd", &meleeWeapon)
addWeapon("Katana", &meleeWeapon)
addWeapon("Bow", &rangedWeapon)
addWeapon("Slingshot", &rangedWeapon)
addWeapon("Knife", &meleeWeapon)
addWeapon("Shuriken", &rangedWeapon)
print(meleeWeapon)
print(rangedWeapon)

deleteWeapon("Bow", &rangedWeapon)
deleteWeapon("Knife", &meleeWeapon)
print(meleeWeapon)
print(rangedWeapon)

//Проверяем существует ли элемент в массиве (по условию задачи)
deleteWeapon("Bow", &rangedWeapon)
deleteWeapon("Knife", &meleeWeapon)
//: ## Задача №2
//: Вы получили тестовое задание от службы доставки еды: преобразовать бонусные баллы клиентов, которые хранятся на сайте, в денежные единицы. Со стороны сайта приходит словарь, содержащий ID клиента **(Int)** и накопленную сумму Бонусов **(Double)**. Ваша задача вернуть на сайт словарь, содержащий ID клиента **(Int)** и конвертированные денежные единицы **(Int)**, каждые 100 бонусов равны 10 денежным единицам.
//: ### Алгоритм решения:
//: * Словарь со своими значениями создавать не нужно. Значения, с которыми вы будете работать, инкапсулированы и переданы в `userPoints`.
//: * Распечатайте словарь и посмотрите, с какими значениями вы будете работать.
//: * Создайте функцию, которая принимаем словарь, ключом которого будет тип Integer, значением число с плавающей точкой Double, вернуть необходимо словарь ключом и значением, которого будет Integer.
//: * Вызовите функцию и распечатайте полученный результат.
//: * Дополнительно(не обязательно) входящих параметров может быть больше, например, для коэффициента пересчета баллов в денежные единицы.
// Решение задачи №2:
// подготовленный словарь
userPoints

func convert(_ dictionary: [Int: Double]) -> [Int: Int]{
  var newDict = [Int: Int]()
  var temp = 0
  
  for value in dictionary {
    temp = Int(value.value) / 10
    newDict.updateValue(temp, forKey: value.key)
  }
  return newDict
}

print("------ Задача №2 ------")
print(userPoints)
print("----------- After convert ------------")
print(convert(userPoints))
//: ## Задача №3 (*)
//:  Вам необходимо реализовать функцию, которая принимаем массив опциональных значений типа Integer и возвращает кортеж, в который необходимо передать сумму четных и нечетных значений.
//: - Массив может содержать повторяющиеся и nil значения, например: `[1, 2, nil, 12, 1, nil, 3, 2]`.
//: - В вычислении должны быть использованы только уникальные значения, а повторяющиеся учитываться не должны. Например, у нас повторяются числа 1 и 2, но попадать в результат они должны один раз; сумма нечетных будет `(1 + 3 = 4)`, четных `(2 + 12 = 14)`.
//:  - Так как в массиве могут быть nil, а вернуть необходимо неопциональное значение, необходимо использовать безопасное развертывание опционала (optional binding).
//:  - Для проверки вашего решения передайте в функцию подготовленный массив `arrayOfNumbers`.
//:  - Массив со своими значениями создавать не нужно. Значения, с которыми вы будете работать, инкапсулированы и переданы в `arrayOfNumbers`.
//:  - Распечатайте массив и посмотрите, с какими значениями вы будете работать.
//:  - Если вы все правильно сделаете, то получите ответ: `сумма четных: 1378, нечетных: 1304`.
// Решение задачи №3(*)
// подготовленный массив
arrayOfNumbers

func calculateSumEvenOddValues(from array: [Int?]) -> (Int, Int) {
  let set = Set(array)
  var even = 0
  var odd = 0
  
  for element in set {
    guard let value = element else { continue }
    if (value % 2) == 0 {
      even = even + value
    } else {
      odd = odd + value
    }
  }
  return (even, odd)
}

// проверка решения Задача №3
print("------ Задача №3 ------")
print(arrayOfNumbers)
print("-----------------------")
print(calculateSumEvenOddValues(from: arrayOfNumbers))
