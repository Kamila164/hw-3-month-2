import Foundation

class Students{
    var name: String
    var surname: String
    var age: Int?
    var group: String
    var averageMark: Double?
    
    init(){
        self.name = ""
        self.surname = ""
        self.age = nil
        self.group = ""
        self.averageMark = nil
    }
    
    init(name: String, surname: String, age: Int, group: String, averageMark: Double) {
        self.name = name
        self.surname = surname
        self.age = age
        self.group = group
        self.averageMark = averageMark
    }
}
