//
//  ContentView.swift
//  HelloDevice
//
//  Created by Larry - 1024 on 2021/12/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            let myDevice = UIDevice.current
            print(myDevice.name)
            print(myDevice.systemName)
            print(myDevice.systemVersion)
            print(myDevice.model)
            print(myDevice.localizedModel)
            print(myDevice.identifierForVendor!)
            
            myDevice.isBatteryMonitoringEnabled = true
            print(myDevice.batteryLevel)
            print(myDevice.batteryState.rawValue)
            myDevice.isBatteryMonitoringEnabled = false
        }, label: {
            HStack {
                Image(systemName: "gear")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.gray)
                Text("Get Device Info")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.gray)
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
