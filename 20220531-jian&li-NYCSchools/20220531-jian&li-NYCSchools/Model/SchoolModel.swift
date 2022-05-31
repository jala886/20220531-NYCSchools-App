//
//  SchoolModel.swift
//  20220531-jian&li-NYCSchools
//
//  Created by jianli on 5/31/22.
//

import Foundation

struct SchoolModel:Identifiable,Codable{
    var id:String
    var name:String
    var overview:String
    var location:String
    var phone:String
    var email:String?
    var website:String
    
    
    enum CodingKeys:String,CodingKey{
        case id = "dbn"
        case name = "school_name"
        case overview = "overview_paragraph"
        case location
        case phone = "phone_number"
        case email = "school_email"
        case website
    }
}

