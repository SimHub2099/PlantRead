//
//  Plant.swift
//  PlantRead
//
//  Created by Simon Shamon on 3/31/23.
//

import Foundation


struct data: Identifiable, Codable {
    //to match api parameters
    var id: Int
    var common_name: String
    var sunlight: String

}

//To Do
// create struct for Plantdata that will be = to array of plantdata
//struct Plant: Identifiable, Codable {
//    //to match api parameters
//    var id: Int
//    var common_name: String
//    var sunlight: String
//
//}


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//let welcome = try? JSONDecoder().decode(Welcome.self, from: json)
//
//let json =
//
//{
//// MARK: - Welcome
//struct Welcome: Codable {
//    let data: [Datum]
//    let to, perPage, currentPage, from: Int
//    let lastPage, total: Int
//
//    enum CodingKeys: String, CodingKey {
//        case data, to
//        case perPage = "per_page"
//        case currentPage = "current_page"
//        case from
//        case lastPage = "last_page"
//        case total
//    }
//}
//
//// MARK: - Datum
//struct Datum: Codable {
//    let id: Int
//    let commonName: String
//    let scientificName: [String]
//    let otherName: [String]?
//    let cycle, watering: String?
//    let sunlight: [String]
//    let defaultImage: DefaultImage
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case commonName = "common_name"
//        case scientificName = "scientific_name"
//        case otherName = "other_name"
//        case cycle, watering, sunlight
//        case defaultImage = "default_image"
//    }
//}
//
//// MARK: - DefaultImage
//struct DefaultImage: Codable {
//    let imageID, license: Int
//    let licenseName: String
//    let licenseURL: String
//    let originalURL, regularURL, mediumURL, smallURL: String
//    let thumbnail: String
//}
//    enum CodingKeys: String, CodingKey {
//        case imageID = "image_id"
//        case license
//        case licenseName = "license_name"
//        case licenseURL = "license_url"
//        case originalURL = "original_url"
//        case regularURL = "regular_url"
//        case mediumURL = "medium_url"
//        case smallURL = "small_url"
//        case thumbnail
//    }
//}
