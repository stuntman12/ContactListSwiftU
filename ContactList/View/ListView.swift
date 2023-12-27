
import SwiftUI

struct ListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink {
                    PersonView(person: person)
                } label: {
                    Text(person.fullName)
                }

            }.navigationTitle("Список")
                .listStyle(.plain)
        }
    }
}




