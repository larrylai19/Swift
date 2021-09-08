//
//  WelcomeView.swift
//  HelloTabView
//
//  Created by Larry - 1024 on 2021/9/8.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image("mobiledev-tw")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("資訊技術培訓\nWeb/APP/AI 應用開發")
                .fontWeight(.heavy)
                .lineSpacing(20)
                .font(.system(size: 32))
                .foregroundColor(.white)
                .frame(width: 350, height: 150, alignment: .center)
                .background(Color.blue)
                .cornerRadius(20)
                .multilineTextAlignment(.center)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
