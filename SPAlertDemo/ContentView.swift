//
//  ContentView.swift
//  SPAlertDemo
//
//  Created by Inpyo Hong on 2021/08/24.
//

import SwiftUI
import SPAlert

struct ContentView: View {
    @State var showAlert: Bool = false
    
    init() {
        SPAlertConfiguration.duration = 2
        SPAlertConfiguration.cornerRadius = 12
    }
    
    var body: some View {
        
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                Button("Show alert") {
                    showAlert = true
                }.spAlert(isPresent: $showAlert,
                          title: "Alert title",
                          message: "Alert message",
                          duration: 2.0,
                          dismissOnTap: false,
                          preset: .custom(UIImage(systemName: "heart")!),
                          haptic: .success,
                          layout: .init(),
                          completion: {
                            print("Alert is destory")
                      })
            }
        }
        .spAlert(isPresent: $showAlert,
                  title: "Alert title",
                  message: "Alert message",
                  duration: 2.0,
                  dismissOnTap: false,
                  preset: .custom(UIImage(systemName: "heart")!),
                  haptic: .success,
                  layout: .init(),
                  completion: {
                    print("Alert is destory")
                  })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
