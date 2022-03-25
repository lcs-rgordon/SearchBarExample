//
//  ContentView.swift
//  SearchBarExample
//
//  Created by Russell Gordon on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State private var flavours: [String] = ["Strawberry",
                                             "Chocolate",
                                             "Vanilla"]
    
    // MARK: Computed properties
    var body: some View {
        
        List(flavours, id: \.self) { currentFlavour in
            Text(currentFlavour)
        }
        .navigationTitle("Ice Cream")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
