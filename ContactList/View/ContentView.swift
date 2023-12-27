//
//  ContentView.swift
//  ContactList
//
//  Created by Даниил on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    private var persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ListView(persons: persons)
                .tabItem {
                    Text("Cписок")
                    Image(systemName: "person.2.fill")
                }
            
            InfoView(persons: persons)
                .tabItem {
                    Text("Контакты")
                    Image(systemName: "phone.fill")
                }
        }.onAppear {
        }
    }
}

#Preview {
    ContentView()
}

