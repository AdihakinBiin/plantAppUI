//
//  PlantModel.swift
//  Plant
//
//  Created by Abdihakin Elmi on 1/13/21.
//

import SwiftUI

struct PlantData: Identifiable, Hashable {
    var id = UUID()
    let imageName: String
    let titleName: String
    let price: String
    let countryName: String
    
    static let example = PlantData(imageName: "img", titleName: "SAMANTHA", price: "$450", countryName: "RUSSIA")

}

let recomandedList: [PlantData] = [
    PlantData(imageName: "img", titleName: "SAMANTHA", price: "$450", countryName: "RUSSIA"),
    PlantData(imageName: "image_1", titleName: "ANGELICA", price: "$530", countryName: "France"),
    PlantData(imageName: "img", titleName: "SAMANTHA", price: "$450", countryName: "RUSSIA"),
    PlantData(imageName: "image_1", titleName: "ANGELICA", price: "$530", countryName: "France")
]

let featuredList: [PlantData] = [
    PlantData(imageName: "bottom_img_1", titleName: "SAMANTHA", price: "$450", countryName: "RUSSIA"),
    PlantData(imageName: "bottom_img_2", titleName: "ANGELICA", price: "$530", countryName: "France"),
    PlantData(imageName: "bottom_img_1", titleName: "SAMANTHA", price: "$450", countryName: "RUSSIA"),
    PlantData(imageName: "bottom_img_2", titleName: "ANGELICA", price: "$530", countryName: "France")
]
