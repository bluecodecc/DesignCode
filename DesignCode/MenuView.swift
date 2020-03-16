//
//  MenuView.swift
//  DesignCode
//
//  Created by 周会勤 on 2020/3/16.
//  Copyright © 2020 周会勤. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        VStack {
            Spacer()
            VStack {
                MenuRow(icon: "gear", title: "Account")
                MenuRow(icon: "creditcard", title: "Billing")
                MenuRow(icon: "person.crop.circle",title: "Signed Out")
            }
            .frame(height: 300.0)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
             .shadow(radius: 30)
            .padding(.horizontal, 30)
        }
        .padding(.bottom, 30)
        
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    var icon : String
    var title : String
    var body: some View {
        HStack(spacing: 16.0) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .bold))
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 120.0, alignment: .leading)
        }
    }
}
