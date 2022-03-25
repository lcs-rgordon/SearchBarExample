//
//  ContentView.swift
//  SearchBarExample
//
//  Created by Russell Gordon on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // The list of ice cream flavours
    @State private var flavours: [String] = ["Strawberry",
                                             "Chocolate",
                                             "Vanilla"]
    
    // The search term entered by the user
    @State private var searchTerm = ""
    
    // MARK: Computed properties
    var body: some View {
        
        List(filter(originalList: flavours, using: searchTerm), id: \.self) { currentFlavour in
            Text(currentFlavour)
        }
        .navigationTitle("Ice Cream")
        .searchable(text: $searchTerm)
        
    }
    
    // MARK: Functions
    
    // filter
    //
    // When a search term has been is entered, the list is filtered by the search term.
    // Otherwise, the original list is returned.
    func filter(originalList: [String], using term: String) -> [String] {
        
        // User is not searching...
        if term.isEmpty {
            
            // ...so return the original list
            return originalList
            
        } else {
            
            // Return the filtered list
            
            // TODO: Delete lines 51 to 53 and replace with appropriate logic
            let temporaryList: [String] = ["Pistachio"]
            return temporaryList
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
