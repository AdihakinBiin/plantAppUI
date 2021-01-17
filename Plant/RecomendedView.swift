//
//  RecomendedView.swift
//  Plant
//
//  Created by Abdihakin Elmi on 1/12/21.
//

import SwiftUI

struct RecomendedView: View {
    let recomandedList: PlantData

        var body: some View{
            VStack {
                ZStack {
                    Color.white
                    Image(recomandedList.imageName)
                        .resizable()
                        .frame(width: 250, height: 350, alignment: .center).offset(y:-50)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(recomandedList.titleName).foregroundColor(.black)
                                .padding(.trailing, 55)
                            Text(recomandedList.price).foregroundColor(.green)
                        }
                        Text(recomandedList.countryName).foregroundColor(.green).opacity(0.5)
                    }.padding(.horizontal).offset(y: 150)
                }.frame(width: 250, height: 350, alignment: .center)
                .cornerRadius(20)
            }
        }
    }

struct RecomendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendedView(recomandedList: recomandedList[1])
    }
}


