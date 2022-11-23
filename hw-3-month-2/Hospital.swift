import Foundation

class Hospital{
    private var patient = [Patient]()
    
    func addPatient(model: Patient){
        patient.append(model)
    }
    
    private func sortPatient(name: String, surname: String, dateOfBirth: String, diagnosis: String) -> Patient{
        var model = Patient()
        for i in patient{
            if i.name == name && i.surname == surname && i.dateOfBirth == dateOfBirth && i.diagnosis == diagnosis{
                model = i
            }
        }
        return model
    }
    
    func add(name: String, surname: String, dateOfBirth: String, diagnosis: String){
        let modelTwo = sortPatient(name: name, surname: surname, dateOfBirth: dateOfBirth, diagnosis: diagnosis)
        if modelTwo.name == name && modelTwo.surname == surname && modelTwo.dateOfBirth == dateOfBirth && modelTwo.diagnosis == diagnosis{
            print("Такой пациент уже есть")
        }else{
            addPatient(model: Patient(name: name, surname: surname, dateOfBirth: dateOfBirth, diagnosis: diagnosis))
            print("Пациент добавлен")
        }
        
    }
    
    func search(name: String, surname: String, dateOfBirth: String, diagnosis: String){
        let model = sortPatient(name: name, surname: surname, dateOfBirth: dateOfBirth, diagnosis: diagnosis)
        if model.name == name && model.surname == surname && model.dateOfBirth == dateOfBirth && model.diagnosis == diagnosis{
            print("Пациент: \(name) \(surname) \nДата рождения: \(dateOfBirth) \nДиагноз: \(diagnosis)")
        }else{
            print("Такого пациента нет")
        }
    }
    
    func delete(name: String, surname: String, dateOfBirth: String, diagnosis: String){
        let modelThree = sortPatient(name: name, surname: surname, dateOfBirth: dateOfBirth, diagnosis: diagnosis)
        if modelThree.name == name && modelThree.surname == surname && modelThree.dateOfBirth == dateOfBirth && modelThree.diagnosis == diagnosis{
            patient.removeAll()
            print("Пациент удален")
        }else{
            print("Такого пациента нет")
        }
    }
    
}
