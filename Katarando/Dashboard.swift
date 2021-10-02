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
            SubElementView(state: .needed)
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}

struct SubElementView: View {
    @State private var value = 1.0
    let state: RessourceState
    
    var body: some View {
        VStack {
            HStack {
                Image(name: state.getImageName())
                    .resizable()
                    .foregroundColor(.red)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .fixedSize()
                    .padding(15)
                    .opacity(value)
                    .background(Circle().foregroundColor(Color.gray.opacity(0.3)))
                    .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                    .onAppear { self.value = 0.3 }
                    .offset(x: -50, y: 0)
                    .padding(.trailing, -40)
                VStack(alignment: .leading) {
                    Text("1000 L").font(.headline)
                    Text("werden benötigt").font(.caption)
                }
                VStack(alignment: .trailing) {
                    Text("18:00").font(.title)
                    Text("Trier").font(.body)
                }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.gray.opacity(0.3)))
            Text("Neuer Auftrag anlegen")
                .font(.headline)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}


enum RessourceState {
    case needed
    case onTheirWay
    case delivered
    
    func getImageName() -> String {
        switch self {
            case .needed:
                return "exclamationmark.triangle.fill"
            case .onTheirWay:
                return "truck.fast"
            case .delivered:
                return "truck.check"
        }
    }
    
    func getTitle() -> String {
        switch self {
            case .needed:
                return "werden benötigt in:"
            case .onTheirWay:
                return "auf dem weg nach:"
            case .delivered:
                return "im Einsatz in:"
        }
    }
}
