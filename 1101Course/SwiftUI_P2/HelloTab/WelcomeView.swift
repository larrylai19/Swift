//
//  WelcomeView.swift
//  HelloTab
//
//  Created by Larry - 1024 on 2021/11/23.
//

import SwiftUI

struct WelcomeView: View {
    
    @AppStorage("UserName") var UserName:String = ""
    
    var body: some View {
        Text(UserName.isEmpty ? "Guest" : UserName)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
