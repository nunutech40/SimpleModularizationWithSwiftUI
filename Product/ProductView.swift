//
//  ProductView.swift
//  Product
//
//  Created by Gilang Ramadhan on 28/10/20.
//

import SwiftUI
import Common

public struct ProductView<Destination: View> : View {
  let action: (() -> Destination)

  public init(action: @escaping (() -> Destination)) {
    self.action = action
  }

  public var body: some View {
    VStack {
      Image("Dicoding", bundle: Bundle(identifier: "com.dicoding.academy.Common"))
        .resizable()
        .frame(width: 240, height: 240)

      Text("Hi, i'm using Quicksand as Font")
        .font(.custom("Quicksand-Regular", size: 20))

      Text("Hi, i'm using framework's Open Sans as Font")
        .font(.custom("OpenSansCondensed-LightItalic", size: 20))

      NavigationLink(destination: self.action()) {
        Text("Open Cart")
      }
    }.navigationBarTitle("product_title".localized(identifier: "com.dicoding.academy.Product"))
  }
}
