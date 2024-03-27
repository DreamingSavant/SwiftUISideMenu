//
//  SideViewController.swift
//  SwiftUISideMenu
//
//  Created by Roderick Presswood on 3/26/24.
//

import SwiftUI

struct SideViewContents: View {
    @Binding var presentSideMenu: Bool
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                SideMenuTopView()
                
                VStack {
                    Text("Side Menu")
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity)
            .background(.gray)
        }
        
    }
    
    @ViewBuilder
    private func SideMenuTopView() -> some View {
        VStack {
            HStack {
                Button {
                    presentSideMenu.toggle()
                } label: {
                    Image(systemName: "x.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.white)
                }
                .frame(width: 34, height: 34)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .padding([.leading, .top], 40)
        .padding(.bottom, 30)
        
    }
}

//#Preview {
//    SideViewController()
//}
