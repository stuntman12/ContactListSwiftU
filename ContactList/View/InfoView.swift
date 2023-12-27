
import SwiftUI

struct InfoView: View {
    
    let persons: [Person]

    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(header: Text(person.fullName)) {
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
                }
            }.navigationTitle("Информация")
                .listStyle(.inset)
        }
    }
}
