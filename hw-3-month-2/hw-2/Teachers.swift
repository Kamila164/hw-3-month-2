import Foundation

class Teachers{
    var name: String
    var surname: String
    var subject: String
    
    init(){
        self.name = ""
        self.surname = ""
        self.subject = ""
    }
    
    init(name: String, surname: String, subject: String) {
        self.name = name
        self.surname = surname
        self.subject = subject
    }
}
