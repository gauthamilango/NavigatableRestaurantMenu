//
//  MenuList.swift
//  RestaurantMenu
//
//  Created by Gautham Ilango on 01/01/20.
//  Copyright © 2020 Gautham Ilango. All rights reserved.
//

import SwiftUI

struct MenuList: View {
    var body: some View {
      NavigationView {
        List(menuItems) { dish in
          NavigationLink(destination: MenuDetail(dish: dish)) {
              MenuRow(dish: dish)
          }
        }.navigationBarTitle(Text("Menu"))
      }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList()
    }
}
