//
//  LunaApp.swift
//  Luna
//
//  Created by Giuseppe Carnà on 27/10/2020.
//

import SwiftUI

@main
struct LunaApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .environmentObject(ArticlesListViewModel())
            }
        }
    }
}

struct LunaApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
