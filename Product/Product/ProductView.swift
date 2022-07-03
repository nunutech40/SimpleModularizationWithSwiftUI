//
//  ProductView.swift
//  Product
//
//  Created by Nunu Nugraha on 02/07/22.
//

import SwiftUI

public struct ProductView<Destination: View> : View {
    let action: (() -> Destination)
    
    public init(action: @escaping (() -> Destination)) {
        self.action = action
    }
    
    public var body: some View {
        VStack {
            Image("dicoding-logo-square", bundle: Bundle(identifier: "com.dicoding.acedemy.Common"))
                  .resizable()
                  .frame(width: 240, height: 240)
            Text("Hi, i'm using Quicksand as Font")
                  .font(.custom("Quicksand-Regular", size: 20))
            Text("Hi, i'm using framework's Open Sans as Font")
                  .font(.custom("OpenSans-CondensedLightItalic", size: 20))
            NavigationLink(destination: self.action()) {
                Text("Open Cart")
            }
        }.navigationBarTitle("Product")
    }
}
