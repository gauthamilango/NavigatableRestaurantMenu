//
//  MenuDetail.swift
//  RestaurantMenu
//
//  Created by Gautham Ilango on 03/01/20.
//  Copyright © 2020 Gautham Ilango. All rights reserved.
//

import SwiftUI

struct MenuDetail: View {
  var dish: Dish
  var body: some View {
    VStack {
      dish.image
        .edgesIgnoringSafeArea(.top)
      .frame(height: 300)
        .scaledToFit()
        .clipShape(Circle())
      VStack(alignment: .leading) {
          Text(dish.name)
              .font(.title)

          HStack(alignment: .top) {
              Text(dish.cuisine)
                .font(.subheadline)
                .fontWeight(.bold)
              Spacer()
            Text("$\(dish.price)")
              .font(.headline)
          }
      }
      .padding()
      Spacer()
    }
    .navigationBarTitle(Text(verbatim: dish.name), displayMode: .inline)
  }
}

struct MenuDetail_Previews: PreviewProvider {
  static var previews: some View {
    MenuDetail(dish: menuItems[8])
  }
}
