//
//  ContentView.swift
//  HelloAlert
//
//  Created by Larry - 1024 on 2021/9/8.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert = false
    @State var colorArray: Array = [255.0, 255.0, 255.0]
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: colorArray[0] / 255,
                            green: colorArray[1] / 255,
                            blue: colorArray[2] / 255))
                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                self.showAlert = true
            }, label: {
                Text("背景顏色變更")
                    .frame(width: 300, height: 100, alignment: .center)
                    .font(.system(size: 30))
                    .background(Color.purple)
                    .padding(.horizontal, 5)
                    .foregroundColor(.white)
                    .border(Color.purple, width: 30)
                    .cornerRadius(20)
            })
            .actionSheet(isPresented: self.$showAlert, content: {
                ActionSheet(title: Text("背景顏色變更"),
                            message: Text("請選擇"),
                            buttons: [
                                .default(Text("紅色"), action: {
                                    colorArray = [255.0, 0.0, 0.0]
                                }),
                                .default(Text("綠色"), action: {
                                    colorArray = [0.0, 255.0, 0.0]
                                }),
                                .default(Text("藍色"), action: {
                                    colorArray = [0.0, 0.0, 255.0]
                                }),
                                .default(Text("白色"), action: {
                                    colorArray = [255.0, 255.0, 255.0]
                                }),
                                .cancel(),
                            ])
            })
            /*
            .alert(isPresented: self.$showAlert, content: {
                Alert(title: Text("背景顏色變更"),
                      message: Text("你是否確定要把背景顏色變成紅色?"),
                      primaryButton: .default(Text("確定"),
                        action: { colorArray = [255.0, 0.0, 0.0] }),
                      secondaryButton: .default(Text("取消"),
                        action: { colorArray = [255.0, 255.0, 255.0] }))
            })
            */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
