//
//  ContentView.swift
//  SearchInList
//
//  Created by Mohar on 01/04/25.
//

import SwiftUI

struct FruitFilter {
    static func filter(_ items: [String], by searchText: String) -> [String] {
        guard !searchText.isEmpty else { return items }
        return items.filter { $0.localizedCaseInsensitiveContains(searchText) }
    }
}

struct ContentView: View {
    @State private var searchText = ""
    
    // Sample data
    let items = ["Apple", "Banana", "Cherry", "Date", "Fig", "Grape", "Kiwi"]

    // Filtered results
    var filteredItems: [String] {
        if searchText.isEmpty {
            return items
        } else {
            return items.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredItems, id: \.self) { item in
                Text(item)
            }
            .navigationTitle("Fruits")
            .searchable(text: $searchText, prompt: "Search fruits")
        }
    }
}


// Preview
#Preview  {
    ContentView()
}
