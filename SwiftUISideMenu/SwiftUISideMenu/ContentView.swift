//
//  ContentView.swift
//  SwiftUISideMenu
//
//  Created by Roderick Presswood on 3/26/24.
//

import SwiftUI

struct ContentView: View {
    @State var presentSlideMenu = false
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .top) {
                ZStack {
                    HStack {
                        Button {
                            presentSlideMenu.toggle()
                        } label: {
                            Image(systemName: "menucard")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 24, height: 24)
                        .padding(.leading, 30)
                        
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(Color.white)
                .zIndex(1)
                .shadow(radius: 0.5)
            }
            .background(Color.gray.opacity(0.8))
            
            SideMenu()
        }
        .frame(maxWidth: .infinity)
    }
    
    @ViewBuilder
    private func SideMenu() -> some View {
        SideMenuView(isShowing: $presentSlideMenu, direction: .leading) {
            SideViewContents(presentSideMenu: $presentSlideMenu)
                .frame(width: 300)
        }
    }
}

#Preview {
    ContentView()
}
