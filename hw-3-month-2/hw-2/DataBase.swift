import Foundation

class DataBase{
    private var students = [Students]()
    private var teachers = [Teachers]()
    
    //ПРЕПОДАВАТЕЛЬ
    private func getModelTeacher(name: String, surname: String, subject: String) -> Teachers{
        var model = Teachers()
        for i in teachers{
            if i.name == name && i.surname == surname && i.subject == subject{
                model = i
            }
        }
        return model
    }
    
    private func sortTeacher(name: String, surname: String) -> Teachers{
        var model = Teachers()
        for i in teachers{
            if i.name == name && i.surname == surname{
                model = i
            }
        }
        return model
    }
    
    func addTeachersToArray(modelTeachers: Teachers){
        teachers.append(modelTeachers)
    }
    
    func addTeacher(name: String, surname: String, subject: String){
        let model = getModelTeacher(name: name, surname: surname, subject: subject)
        if model.name == name && model.surname == surname && model.subject == subject{
            print("Данный преподаватель уже существует")
        }else{
            addTeachersToArray(modelTeachers: Teachers(name: name, surname: surname, subject: subject))
            print("Данные преподавателя добавлены")
        }
    }
    
    func deleteTeacher(name: String, surname: String){
        let model = sortTeacher(name: name, surname: surname)
        if model.name == name && model.surname == surname{
            for (id, item) in teachers.enumerated(){
                if item.name == name && item.surname == surname{
                    teachers.remove(at: id)
                    print("Данные преподавателя \(name) \(surname) удалены")
                }
            }
        }else{
            print("Преподаватель не найден")
        }
    }
    
    func searchTeacher(name: String, surname: String){
        let model = sortTeacher(name: name, surname: surname)
        if model.name == name && model.surname == surname{
            print("Имя: \(name) \nФамилия: \(surname) \nПредмет: \(model.subject)")
        }else{
            print("Преподаватель не найден")
        }
    }
    
    func getTeacherList(){
        print("\nCПИСОК ПРЕПОДАВАТЕЛЕЙ")
        var count = 0
        for id in 1..<teachers.count{
            for item in teachers{
                count += id
                print("#\(count) - \(item.name) \(item.surname) - \(item.subject)\n")
            }
            break
        }
    }
    
    //СТУДЕНТ
    
    private func getModel(name: String, surname: String, age: Int, group: String, averageMark: Double) -> Students{
        var model = Students()
        for i in students{
            if i.name == name && i.surname == surname && i.age == age && i.group == group && i.averageMark == averageMark{
                model = i
            }
        }
        return model
    }
    
    private func sortStudents(name: String, surname: String) -> Students?{
        var model: Students? = nil
        for i in students{
            if i.name == name && i.surname == surname{
                model = i
            }
        }
        return model
    }
    
    func addStudentsToArray(modelStudents: Students){
        students.append(modelStudents)
    }
    
    func addStudents(name: String, surname: String, age: Int, group: String, averageMark: Double){
        let model = getModel(name: name, surname: surname, age: age, group: group, averageMark: averageMark)
        if model.name == name && model.surname == surname && model.age == age && model.group == group && model.averageMark == averageMark{
            print("Данный студент уже существует")
        }else{
            addStudentsToArray(modelStudents: Students(name: name, surname: surname, age: age, group: group, averageMark: averageMark))
            print("Данные студента добавлены")
        }
    }
    
    func deleteStudents(name: String, surname: String){
        let model = sortStudents(name: name, surname: surname)
        if model?.name == name && model?.surname == surname{
            for (id, item) in students.enumerated(){
                if item.name == name && item.surname == surname{
                    students.remove(at: id)
                    print("Данные студента \(name) \(surname) удалены")
                }
            }
        }else{
            print("Студент не найден")
        }
    }
    
    func searchStudents(name: String, surname: String){
        let model = sortStudents(name: name, surname: surname)
        if model != nil{
            print("Имя: \(name) \nФамилия: \(surname) \nВозраст: \(model!.age ?? 0) \nГруппа: \(model!.group) \nСредний балл: \(model!.averageMark ?? 0)")
        }else{
            print("Студент не найден")
        }
    }
    
    func getStudentsList(){
        print("\nCПИСОК СТУДЕНТОВ")
        var count = 0
        for id in 1..<students.count{
            for item in students{
                count += id
                print("#\(count) - \(item.name) \(item.surname) - \(item.age ?? 0) - \(item.group) - \(item.averageMark ?? 0)\n")
            }
            break
        }
    }
}
