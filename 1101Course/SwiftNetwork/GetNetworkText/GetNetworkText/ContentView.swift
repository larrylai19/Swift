//
//  ContentView.swift
//  GetNetworkText
//
//  Created by Larry - 1024 on 2021/12/28.
//

import SwiftUI

let url = URL(string: "https://tw.yahoo.com")
let session = URLSession.shared

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(perform: {
                let dataTask = session
                    .dataTask(with: url!, completionHandler: {
                        (data: Data?, response: URLResponse?, error: Error?) in
                        if let x = data {
                            print(String(data: x, encoding: String.Encoding.utf8)!);
                        }
                        else {
                            print("Can't get data");
                        }
                    })
                dataTask.resume()
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
