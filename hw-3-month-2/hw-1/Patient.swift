import Foundation

class Patient{
    var name: String
    var surname: String
    var dateOfBirth: String
    var diagnosis: String
    
    init(){
        self.name = ""
        self.surname = ""
        self.dateOfBirth = ""
        self.diagnosis = ""
    }
    
    init(name: String, surname: String, dateOfBirth: String, diagnosis: String) {
        self.name = name
        self.surname = surname
        self.dateOfBirth = dateOfBirth
        self.diagnosis = diagnosis
    }
}
