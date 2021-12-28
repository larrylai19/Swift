//
//  ContentView.swift
//  HelloMotion
//
//  Created by Larry - 1024 on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var motion: MotionManager
    
    var body: some View {
        VStack {
            Text("磁力計")
            Text("X: \(motion.x)")
            Text("Y: \(motion.y)")
            Text("Z: \(motion.z)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(motion: MotionManager())
    }
}
