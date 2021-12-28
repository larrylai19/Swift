//
//  HelloMotionApp.swift
//  HelloMotion
//
//  Created by Larry - 1024 on 2021/12/21.
//

import SwiftUI

@main
struct HelloMotionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(motion: MotionManager())
        }
    }
}
