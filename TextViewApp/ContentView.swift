//
//  ContentView.swift
//  TextViewApp
//
//  Created by Cyan on 2019/11/06.
//  Copyright © 2019 Cyan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTapped = false
    
    var body: some View {
        VStack {
            Text(setText(state: buttonTapped))
                .font(.title)
            Spacer()
                .frame(height: 30.0)
            Button(action: {
                self.buttonTapped.toggle()
                print(self.buttonTapped)
            }) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
            }
        }
    }
    
    func setText(state: Bool) -> String {
        if state {
            return "See You!"
        } else {
            return "Hello, World!"
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
