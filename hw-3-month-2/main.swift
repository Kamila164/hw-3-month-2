import Foundation

var hospital = Hospital()

//Добавление пациента
hospital.add(name: "Темирлан", surname: "Чынгызов", dateOfBirth: "25.03.1992", diagnosis: "Грипп") //Пациент добавлен
hospital.add(name: "Акмарал", surname: "Минбаева", dateOfBirth: "13.07.1997", diagnosis: "Дистимия") //Пациент добавлен
hospital.add(name: "Тимур", surname: "Субаналиев", dateOfBirth: "22.10.1996", diagnosis: "Лактостаз") //Пациент добавлен
hospital.add(name: "Акмарал", surname: "Минбаева", dateOfBirth: "13.07.1997", diagnosis: "Дистимия") //Такой пациент уже есть

//Поиск в массиве
hospital.search(name: "Акмарал", surname: "Минбаева", dateOfBirth: "13.07.1997", diagnosis: "Дистимия") //Пациент: Акмарал Минбаева Дата рождения: 13.07.1997 Диагноз: Дистимия
hospital.search(name: "Тимур", surname: "Субаналиев", dateOfBirth: "22.10.1996", diagnosis: "Дистимия") //Такого пациента нет

//Удаление пациента
hospital.delete(name: "Темирлан", surname: "Чынгызов", dateOfBirth: "25.03.1992", diagnosis: "Грипп") //Пациент удален
hospital.delete(name: "Давлет", surname: "Эрмеков", dateOfBirth: "6.10.2000", diagnosis: "Аллергический ринит") //Такого пациента нет
