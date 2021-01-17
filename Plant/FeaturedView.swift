//
//  FeaturedView.swift
//  Plant
//
//  Created by Abdihakin Elmi on 1/12/21.
//

import SwiftUI

struct FeaturedView: View {
    let featurelist: PlantData
    var body: some View {
       VStack {
        ZStack {
            Color.white
            Image(featurelist.imageName)
                .resizable()
                .frame(width: 350, height: 250, alignment: .center).offset(y:-50)
            VStack(alignment: .leading) {
                HStack {
                    Text(featurelist.titleName)
                        .foregroundColor(.black)
                        .padding(.trailing, 160)
                    Text(featurelist.price).foregroundColor(.green)
                }
                Text(featurelist.countryName).foregroundColor(.green).opacity(0.5)
            }.padding(.horizontal).offset(y: 100)
        }.frame(width: 350, height: 250, alignment: .center)
        .cornerRadius(20)
    }

    }
    }

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView(featurelist: featuredList[2])
    }
}

