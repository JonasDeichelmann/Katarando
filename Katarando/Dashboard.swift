//
//  Dashboard.swift
//  Katarando
//
//  Created by Jonas Deichelmann on 02.10.21.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        VStack {
            HStack {
                Image(name: "fuelpump.fill")
                Text("Dieselkraftstoff").font(.title)
            }
            VStack {
                Image(name: "exclamationmark.triangle.fill")
                HStack {
                    Text("1000 L")
                }
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
