//
//  SettingsView.swift
//  TestNewsAPP
//
//  Created by Lwj on 2021/11/20.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var darkModeEnabled: Bool
    @Binding var systemThemeEnabled: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Display"),
                footer: Text("System settings will override DarkMode and use the current device theme")) {
                    
                    Toggle(isOn: $darkModeEnabled,
                           label: {
                        Text("Dark Mode")
                    })
                    .onChange(of: darkModeEnabled,
                                perform: { _ in
                        SystemThemeManager
                            .shared
                            .handleTheme(darkmode: darkModeEnabled,
                                         system: systemThemeEnabled)
                    })
                    
                    Toggle(isOn: $systemThemeEnabled,
                           label: {
                        Text("Use System Settings")
                    })
                    .onChange(of: systemThemeEnabled,
                                perform: { _ in
                        SystemThemeManager
                            .shared
                            .handleTheme(darkmode: darkModeEnabled,
                                         system: systemThemeEnabled)
                    })
                }
                Section {
                    Link(destination: URL(string: "https://www.baidu.com")!,
                         label: {
                            Label("Follow me on twitter @LWJ", systemImage: "link")
                    })
                    Link("mail me!",
                         destination: URL(string: "maileto:2943269341@qq.com")!)
                    Link("Call me!",
                         destination: URL(string: "tel:911")!)
                }
                .foregroundColor(Theme.textColor)
                .font(.system(size: 16,weight: .semibold))
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(darkModeEnabled: .constant(false), systemThemeEnabled: .constant(false))
    }
}
