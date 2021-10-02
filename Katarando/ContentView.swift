//
//  ContentView.swift
//  Katarando
//
//  Created by Jonas Deichelmann on 02.10.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Dashboard().tabItem{
                Label("Anforderungen", systemImage: "list.dash")
            }
            History().tabItem{
                Label("Vergangene Aufträge", systemImage: "calendar")
            }
            MapView().tabItem {
                Label("Karte", systemImage: "map")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
