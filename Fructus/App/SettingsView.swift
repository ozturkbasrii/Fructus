//
//  SettingsView.swift
//  Fructus
//
//  Created by Hasan Basri Öztürk on 28.09.2022.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    
    var body: some View {
        
        NavigationView() {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack (alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutritients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - SECTION 2
                    
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application bt toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                    } label: {
                        SettingsLabelView(labelText: "Customuzation", labelImage: "paintbrush")
                    }

                    
                    //MARK: - SECTION 3
                    
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Hasan Basri Öztürk")
                        SettingsRowView(name: "Designer", content: "Basri Studio")
                        SettingsRowView(name: "Compability", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUIMasterClass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "GitHub", linkLabel: "ozturkbasrii", linkDestination: "github.com/ozturkbasrii")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }

                    
                    
                }
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image (systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
