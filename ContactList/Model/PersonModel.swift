import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let female: String
    let email: String
    let number: String
    var fullName: String {
        name + " " + female
    }
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        let datastore = DataStore.share
        
        let name = datastore.name.shuffled()
        let female = datastore.female.shuffled()
        let email = datastore.email.shuffled()
        let numberIphone = datastore.numberIphone.shuffled()
        
        let minValueInDatastore = min(
            name.count,
            female.count,
            email.count,
            numberIphone.count
            )
        
        for index in 0..<minValueInDatastore {
            let person = Person(
                name: name[index],
                female: female[index],
                email: email[index],
                number: numberIphone[index]
            )
            
            persons.append(person)
        }
        return persons
    }
}



