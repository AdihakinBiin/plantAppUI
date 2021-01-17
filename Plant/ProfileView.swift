//
//  ProfileView.swift
//  Plant
//
//  Created by Abdihakin Elmi on 1/12/21.
//

import SwiftUI
import Combine

struct ProfileView: View {
        @State var searchBar: String
        var body: some View {
            VStack {
                ZStack {
                    Color("darkGreen")
                    VStack(alignment: .leading) {
                        Image("menu")
                            .resizable()
                            .frame(width: 30, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            
                        HStack {
                            Text("Hi Updy")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                            Image("logo")
                        }.padding(.top)
                      
                    
                    }.padding(.leading)
                   
                }.frame(height: 280)
                .cornerRadius(50)
                .ignoresSafeArea()
                TextField("Search", text: $searchBar).padding(7).frame(height: 50, alignment: .center)
                    .padding(.horizontal, 25)
                    .background(Color(.white))
                    .cornerRadius(8)
                    .padding(.horizontal, 10).offset(y: -50.0).shadow(radius: 10)
                Spacer()
            }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(searchBar: "SearchBar")
    }
}
