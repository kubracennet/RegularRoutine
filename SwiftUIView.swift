//
//  SwiftUIView.swift
//  RegularRoutine
//
//  Created by Kübra Cennet Yavaşoğlu on 22.02.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            ContentView()
                .tabItem {
                    Image(systemName: "House")
                    Text("Home")
              
                }
            
            Text("Favorites View")
                .tabItem {
                    Image(systemName: "Heart.fill")
                    Text("Favorites")
                }
            
            Text("Profile View")
                .tabItem {
                    Image(systemName: "Person")
                    Text("Profile")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
