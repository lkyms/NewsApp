//
//  HomeView.swift
//  TestNewsAPP
//
//  Created by Lwj on 2021/11/13.
//

import SwiftUI

struct HomeView: View {

    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    @AppStorage("systemThemeEnabled") private var  systemThemeEnabled = false
    
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Feed")
                }
            SettingsView(darkModeEnabled: $darkModeEnabled, systemThemeEnabled: $systemThemeEnabled)
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("settings")
                }
        }
        .onAppear {
            SystemThemeManager
                .shared
                .handleTheme(darkmode: darkModeEnabled,
                             system: systemThemeEnabled)
        }
    }
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
