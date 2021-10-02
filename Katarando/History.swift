//
//  History.swift
//  Katarando
//
//  Created by Jonas Deichelmann on 02.10.21.
//

import SwiftUI

struct History: View {
    var body: some View {
        List {
            ForEach(0..<10, id: \.self) { value in
                    Text("History Aufträge: \(value)")
            }
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
