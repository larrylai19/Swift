//
//  ContentView.swift
//  HelloPath
//
//  Created by Larry - 1024 on 2021/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var progress:CGFloat = 0.0
    
    var body: some View {
        VStack {
            /*
            Path() { myPath in
                myPath.move(to: CGPoint(x: 20, y: 20))
                myPath.addLine(to: CGPoint(x: 300, y: 20))
                myPath.addLine(to: CGPoint(x: 300, y: 200))
                myPath.addLine(to: CGPoint(x: 20, y: 200))
                //myPath.addLine(to: CGPoint(x: 20, y: 20))
                myPath.closeSubpath()
            }
            .fill(Color.purple)
            //.stroke(Color.red, lineWidth: 10)
            */

            /*
            ZStack {
                Path() { myPath in
                    myPath.move(to: CGPoint(x: 40, y: 60))
                    myPath.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                    myPath.addQuadCurve(to: CGPoint(x: 210, y: 120), control: CGPoint(x: 240, y: 90))
                    myPath.addQuadCurve(to: CGPoint(x: 40, y: 120), control: CGPoint(x: 125, y: 180))
                    myPath.addQuadCurve(to: CGPoint(x: 40, y: 60), control: CGPoint(x: 10, y: 90))
                }
                .fill(Color(red: 117/255, green: 63/255, blue: 22/255))
                
                Path() { myPath in
                    myPath.move(to: CGPoint(x: 70, y: 40))
                    myPath.addQuadCurve(to: CGPoint(x: 70, y: 140), control: CGPoint(x: 110, y: 90))
                }
                .stroke(Color.white, lineWidth: 20)
                
                Path() { myPath in
                    myPath.move(to: CGPoint(x: 180, y: 40))
                    myPath.addQuadCurve(to: CGPoint(x: 180, y: 140), control: CGPoint(x: 140, y: 90))
                }
                .stroke(Color.white, lineWidth: 20)
            }
            */
            
            /*
            ZStack {
                Path() { path in
                    path.move(to: CGPoint(x: 200, y: 200))
                    path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 110), clockwise: false)
                }
                .fill(Color(.systemYellow))
                .offset(x: 10, y: 10)
                .overlay(
                    Text("市占率\n30.6%")
                        .font(.system(size: 30))
                        .bold()
                        .offset(x: 70, y: -110)
                )
                
                Path() { path in
                    path.move(to: CGPoint(x: 200, y: 200))
                    path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 150), clockwise: false)
                }
                .fill(Color(.systemTeal))
                
                Path() { path in
                    path.move(to: CGPoint(x: 200, y: 200))
                    path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 150), endAngle: Angle(degrees: 250), clockwise: false)
                }
                .fill(Color(.systemBlue))
                
                Path() { path in
                    path.move(to: CGPoint(x: 200, y: 200))
                    path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 250), endAngle: Angle(degrees: 360), clockwise: false)
                }
                .fill(Color(.systemPurple))
            }
            */
            
            ZStack {
                Circle()
                    .stroke(Color.gray, lineWidth: 20)
                    .frame(width: 300, height: 300, alignment: .center)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.purple, lineWidth: 20)
                    .frame(width: 300, height: 300, alignment: .center)
                    .rotationEffect(Angle(degrees: -90))
                    .overlay(
                        Text("\(Int(progress * 100))%")
                            .font(.system(size: 60))
                            .bold()
                            .foregroundColor(.purple)
                    )
            }
            .onAppear(perform: {
                Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { Timer in
                    self.progress += 0.05
                    
                    if self.progress >= 1.0 {
                        Timer.invalidate()
                    }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
