
import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        
        VStack {
            Form {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .offset(x: 55)
                    .foregroundStyle(.blue)
                HStack{
                    Image(systemName: "person.2.fill")
                        .foregroundStyle(.blue)
                    Text(person.number)
                }
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundStyle(.blue)
                    Text(person.email)
                }
            }.navigationTitle(Text(person.fullName))
        }
    }
}

#Preview {
    PersonView(person: Person(name: "1", female: "2", email: "3", number: "4") )
}
