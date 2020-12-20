//
//  ContentView.swift
//  DesignCode
//
//  Created by 周会勤 on 2020/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("UI Design")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            
                            Text("Certificate")
                                .foregroundColor(Color("accent"))
                                .font(.system(size: 20))
                        }
                        
                        Spacer()
                        
                        Image("Logo1")
                    }.padding(20)
                    
                    Spacer()
                    
                    Image("Card1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 110, alignment: .top)
                }
                .frame(width: 340, height: 220)
                .background(Color.black)
                .cornerRadius(20)
                .shadow(radius: 20)
            }
            
            Color.blue
                .frame(width: 300, height: 220)
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -20)
            Color.blue
                .frame(width: 300, height: 220)
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: 20)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
