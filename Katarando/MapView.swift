//
//  MapView.swift
//  Katarando
//
//  Created by Jonas Deichelmann on 02.10.21.
//
import WebKit
import SwiftUI

struct MapView: View {
    var body: some View {
        WebView()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

struct WebView: UIViewRepresentable {

    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }

    func updateUIView(_ view: WKWebView, context: UIViewRepresentableContext<WebView>) {
        let request = URLRequest(url: URL(string: "http://192.168.9.17/map-visualization")!)
        view.load(request)
//        https://www.google.com/maps/place/Trier/@49.7440609,6.6411792,13.06z/data=!4m5!3m4!1s0x47957c9bd11cfbc5:0xfe0ca3a54dcd724b!8m2!3d49.749992!4d6.6371433
    }
}
