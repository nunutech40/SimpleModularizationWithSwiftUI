//
//  ContentView.swift
//  App
//
//  Created by Nunu Nugraha on 02/07/22.
//

import SwiftUI
import Common
import Cart
import Product

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: ProductView(action: {
                    CartView(action: {
                        ProductDetailView() })
                })
                ) {
                    Text("Open Product")
                }
                Text(hello)
            }.navigationTitle("Modular")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
