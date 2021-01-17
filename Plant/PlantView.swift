//
//  PlantView.swift
//  Plant
//
//  Created by Abdihakin Elmi on 1/12/21.
//

import SwiftUI

struct PlantView: View {
    var plantItem: PlantData
    var body: some View {
        VStack {
            HStack{
                ZStack{
                    VStack(alignment: .leading, spacing: 50){
                        IconsView(imageName: "sun")
                        IconsView(imageName: "icon_2")
                        IconsView(imageName: "icon_3")
                        IconsView(imageName: "icon_4")
                    }.offset(x: -120, y: 20)
                    Image(plantItem.imageName)
                        .resizable()
                        .frame(width: 300, height: 500, alignment: .trailing)
                        .cornerRadius(50)
                        .offset(x: 100)
                }
                
            }.padding(.bottom, 20)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(plantItem.titleName)
                        .font(.title2).bold()
                    Text(plantItem.countryName)
                        .font(.title3)
                        .foregroundColor(Color(.secondaryLabel))
                }
                Spacer()
                Text(plantItem.price).bold().font(.title2).foregroundColor(.green).opacity(0.8)
                
            }.padding(.horizontal, 20)
            
            Spacer()
            HStack{
                ButtonView(buttonName: "Buy Now", buttonColor: Color("darkGreen"), textColor: .white)
                Spacer()
                ButtonView(buttonName: "Description", buttonColor: Color(.systemGray6), textColor: .secondary)
          
            
            }.ignoresSafeArea().padding()
            Spacer()
        }
}

struct PlantView_Previews: PreviewProvider {
    static var previews: some View {
        PlantView(plantItem: PlantData.example)    }
}

struct IconsView: View {
    var imageName: String
    var body: some View {
        ZStack{
            Color(.white)
            Image(imageName)
        }.frame(width: 60, height: 60, alignment: .center)
        .cornerRadius(5.0)
        .shadow(radius: 10)
    }
}

    struct ButtonView: View {
        var buttonName: String
        var buttonColor: Color
        var textColor: Color
        var body: some View {
            Button{
                
            }label:{
                Text(buttonName)
                    .font(.title2)
            }.accentColor(textColor)
            .frame(width: 150, height: 20, alignment: .center)
            .padding(.horizontal, 0)
            .padding(.vertical, 20)
            .background(buttonColor)
            .cornerRadius(20)
        }
    }
}
