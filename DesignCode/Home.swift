//
//  Home.swift
//  DesignCode
//
//  Created by 周会勤 on 2020/3/17.
//  Copyright © 2020 周会勤. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var showProfile = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8745098039, green: 0.804, blue: 0.9176470588, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Watching")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                    Spacer()
                    Button(action: { self.showProfile.toggle()}) {
                        Image("Avatar")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                        
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
                Spacer()
            }
//            .padding(.top, 44)
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .scaleEffect(showProfile ? 0.9 : 1)
            MenuView()
                .offset(y: showProfile ? 0: 600)
                .animation(.spring())
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
