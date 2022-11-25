import Foundation

//var hospital = Hospital()
//
////Добавление пациента
//hospital.add(name: "Темирлан", surname: "Чынгызов", dateOfBirth: "25.03.1992", diagnosis: "Грипп") //Пациент добавлен
//hospital.add(name: "Акмарал", surname: "Минбаева", dateOfBirth: "13.07.1997", diagnosis: "Дистимия") //Пациент добавлен
//hospital.add(name: "Тимур", surname: "Субаналиев", dateOfBirth: "22.10.1996", diagnosis: "Лактостаз") //Пациент добавлен
//hospital.add(name: "Акмарал", surname: "Минбаева", dateOfBirth: "13.07.1997", diagnosis: "Дистимия") //Такой пациент уже есть
//
////Поиск в массиве
//hospital.search(name: "Акмарал", surname: "Минбаева", dateOfBirth: "13.07.1997", diagnosis: "Дистимия") //Пациент: Акмарал Минбаева Дата рождения: 13.07.1997 Диагноз: Дистимия
//hospital.search(name: "Тимур", surname: "Субаналиев", dateOfBirth: "22.10.1996", diagnosis: "Дистимия") //Такого пациента нет
//
////Удаление пациента
//hospital.delete(name: "Темирлан", surname: "Чынгызов", dateOfBirth: "25.03.1992", diagnosis: "Грипп") //Пациент удален
//hospital.delete(name: "Давлет", surname: "Эрмеков", dateOfBirth: "6.10.2000", diagnosis: "Аллергический ринит") //Такого пациента нет


var dataBase = DataBase()

//СТУДЕНТ
//Добавление в массив
dataBase.addStudents(name: "Кундузай", surname: "Абдувалиева", age: 21, group: "IT(ПИ)(б)-1-18", averageMark: 4.28)
dataBase.addStudents(name: "Амантур", surname: "Исаев", age: 22, group: "IT(ПИ)(б)-1-18", averageMark: 3.97)
dataBase.addStudents(name: "Бекжана", surname: "Кадирбекова", age: 22, group: "IT(ПИ)(б)-1-18", averageMark: 4.97)
dataBase.addStudents(name: "Акмарал", surname: "Минбаева", age: 22, group: "IT(ПИ)(б)-1-18", averageMark: 3.14)
dataBase.addStudents(name: "Давлет", surname: "Эрмеков", age: 22, group: "IT(ПИ)(б)-1-18", averageMark: 2.78)

//Удаление из массива
dataBase.deleteStudents(name: "Амантур", surname: "Исаев")

//Поиск в массиве
dataBase.searchStudents(name: "Бекжана", surname: "Кадирбекова")

//Полный список студентов
dataBase.getStudentsList()


//ПРЕПОДАВАТЕЛЬ
//Добавление в массив
dataBase.addTeacher(name: "Гульнара", surname: "Иманбековна", subject: "Основы программирования")
dataBase.addTeacher(name: "Индира", surname: "Руслановна", subject: "Графический дизайн")
dataBase.addTeacher(name: "Азиз", surname: "Боконбаев", subject: "WEB-программирование")
dataBase.addTeacher(name: "Нурлан", surname: "Жолдошбекович", subject: "Структурное программирование")
dataBase.addTeacher(name: "Закария", surname: "Хамза", subject: "ООП")

//Удаление из массива
dataBase.deleteTeacher(name: "Нурлан", surname: "Жолдошбекович")

//Поиск в массиве
dataBase.searchTeacher(name: "Индира", surname: "Руслановна")

//Полный список преподавателей
dataBase.getTeacherList()
