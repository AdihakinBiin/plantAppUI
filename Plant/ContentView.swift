//
//  ContentView.swift
//  Plant
//
//  Created by Abdihakin Elmi on 1/12/21.
//
import Combine
import SwiftUI

struct ContentView: View {
    init(){
        UINavigationBar.appearance().barTintColor = .clear
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
    }
    let recomended: [PlantData] = recomandedList
    let featured: [PlantData] = featuredList
    var body: some View {
       
        
        NavigationView {
            ZStack {
                Color(.systemGray5)
                    .ignoresSafeArea()
                ScrollView {
                    ProfileView(searchBar: "").offset(y: -150)
                    VStack{
                        CardView(titleName: "Recomended")
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(recomended){ item in
                                    NavigationLink(destination: PlantView(plantItem: item)) {
                                        RecomendedView(recomandedList: item)
                                    }
                                }
                            }
                        }.padding(.bottom)
                        CardView(titleName: "Featured plants")
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                
                                ForEach(featured, id: \.self){ item in
                                        NavigationLink(destination: PlantView(plantItem: item)){
                                        FeaturedView(featurelist: item)
                                    }
                                }     }
                        }
                    }.padding().offset(y: -170)
                }
            }
            .background(Color(.green))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CardView: View {
    var titleName: String
    var body: some View {
        HStack {
            Text(titleName)
                .font(.title3)
            Spacer()
            Button {
                
            }label:{
                Text("More")
                    .fontWeight(.bold)
                    .font(.title3)
                
            }.accentColor(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 5)
            .background(Color("darkGreen"))
            .cornerRadius(20)
        }.padding(.horizontal)
    }
}
