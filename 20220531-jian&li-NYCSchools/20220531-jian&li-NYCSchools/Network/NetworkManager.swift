//
//  NetworkManager.swift
//  20220531-jian&li-NYCSchools
//
//  Created by jianli on 5/31/22.
//

import Foundation

class NetworkManager{
    static private let strListSchoolURL="https://data.cityofnewyork.us/api/id/s3k6-pzi2.json?$query=select%20*%2C%20%3Aid%20limit%20100"
    //static private let strListSchoolURL="https://data.cityofnewyork.us/Education/DOE-High-School-Directory-2017/s3k6-pzi2"
    static private let strSATSchoolURL =  "https://data.cityofnewyork.us/api/id/f9bf-2cp4.json?$select=`dbn`,`school_name`,`num_of_sat_test_takers`,`sat_critical_reading_avg_score`,`sat_math_avg_score`,`sat_writing_avg_score`&$order=`:id`+ASC&$limit=478&$offset=0"
    
    //static private let strDetailSchoolURL="https://data.cityofnewyork.us/Education/SAT-Results/f9bf-2cp4"
    
    static public func downloadListSchoolData() throws -> Data{
        guard let url = URL(string:strListSchoolURL)
        else{throw NSError(domain: "bad url:\(strListSchoolURL)", code: -1)}
        return try Data(contentsOf: url)
    }
    
    static public func downloadSATSchoolData() throws -> Data{
        guard let url = URL(string: strSATSchoolURL.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)
        else{throw NSError(domain: "bad url:\(strSATSchoolURL)", code: -1)}
        return try Data(contentsOf: url)
    }
}
